unit ard_digitalIO;
(* This is a part of Laz_AVR_lib
 *
 * copyright (c) 2019 by Andreas Frieß
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 *)

{$mode objfpc}{$H-}
{$goto on}

interface
const
  ardHIGH = true;
  ardLOW  = false;

  ardLED_BUILTIN = 13;

type
  ardPinMode = (ardINPUT, ardINPUT_PULLUP, ardOUTPUT);

// Configures the specified pin to behave either as an input or an output
//  https://www.arduino.cc/reference/en/language/functions/digital-io/pinmode/
procedure pinMode(pin:byte; mode:ardPinMode);

// Write a HIGH or a LOW value to a digital pin.
// https://www.arduino.cc/reference/en/language/functions/digital-io/digitalwrite/
procedure digitalWrite(pin:byte; value:boolean);

// Reads the value from a specified digital pin, either HIGH or LOW.
// https://www.arduino.cc/reference/en/language/functions/digital-io/digitalread/
function  digitalRead(pin:byte):boolean;

implementation


procedure pinMode(pin: byte; mode: ardPinMode);
begin

  //Output
  if (mode = ardOUTPUT) then
    case pin of
      0..7 : begin
        DDRD := DDRD or byte(1 shl pin);
      end;
      8..13: begin
        DDRB := DDRB or byte(1 shl (pin-8));
      end;
      14..19: begin
        DDRC := DDRC or byte(1 shl (pin-14));
      end;
    end
  else begin
    // Input or Input_Pullup
    case pin of
      0..7 : begin
        DDRD := DDRD and not(1 shl pin);
      end;
      8..13: begin
        DDRB := DDRB and not(1 shl (pin-8));
      end;
      14..19: begin
        DDRC := DDRC and not(1 shl (pin-14));
      end;
    end;
    // see: https://www.arduino.cc/en/Tutorial/DigitalPins
    // cited:
    //   Prior to Arduino 1.0.1, it was possible to configure the
    //   internal pull-ups in the following manner:
    //     pinMode(pin, INPUT);           // set pin to input
    //     digitalWrite(pin, HIGH);       // turn on pullup resistors
    if (mode = ardINPUT_PULLUP) then
      digitalWrite(pin,TRUE);
  end;
end;

procedure digitalWrite(pin:byte; value: boolean);
begin
  case pin of
    0..7 : begin
      if value then
        PORTD := PORTD or byte(1 shl (pin))
      else
        PORTD := PORTD and not(1 shl (pin));
    end;
    8..13: begin
      if value then
        PORTB := PORTB or byte(1 shl (pin-8))
      else
        PORTB := PORTB and not(1 shl (pin-8));
    end;
    14..19: begin
      if value then
        PORTC := PORTC or byte(1 shl (pin-14))
      else
        PORTC := PORTC and not(1 shl (pin-14));
    end;
  end;
end;

function digitalRead(pin: byte): boolean;
begin
  Result := false;
  case pin of
    0..7 : begin
      result := ((DDRD shr pin) and $01) <> 0;
    end;
    8..13: begin
      result := ((DDRB shr (pin-8)) and $01)<> 0;
    end;
    14..19: begin
      result := ((DDRC shr (pin-14)) and $01)<> 0;
    end;
  end;
end;

procedure delay(ms: LongWord);
begin

end;

//avr-embedded-objdump.exe -D -m avr5 Blink.ino.standard.hex > blink.asm

end.

