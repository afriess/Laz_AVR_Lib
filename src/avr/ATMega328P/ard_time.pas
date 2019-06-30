unit ard_Time;
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
uses
  ard_Common;

const
  MICROSECONDS_PER_TIMER0_OVERFLOW = ((64 * 256) div clockCyclesPerMicrosecond);
  MILLIS_INC = (MICROSECONDS_PER_TIMER0_OVERFLOW div 1000);
  FRACT_INC = ((MICROSECONDS_PER_TIMER0_OVERFLOW div 1000) shl 3);
  FRACT_MAX = (1000 shr 3);

// Pauses the program for the amount of time (in milliseconds)
// https://www.arduino.cc/reference/en/language/functions/time/delay/
procedure delay(ms : LongWord);

// Pauses the program for the amount of time (in microseconds)
// https://www.arduino.cc/reference/en/language/functions/time/delaymicroseconds/
procedure delayMicroseconds(us : LongWord);

// Returns the number of milliseconds passed since the Arduino board began running the current program.
// https://www.arduino.cc/reference/en/language/functions/time/millis/
function millis():LongWord;

implementation

var
  timer0_overflow_count: LongWord = 0;
  timer0_millis: LongWord = 0;
  timer0_fract: LongWord = 0;

//--- Interrupt 16 Timer/Couner0 Overflow ---
Procedure TIMER0_OVF_ISR; Alias: 'TIMER0_OVF_ISR'; Interrupt; Public;
var
  m,
  f: LongWord;
begin
  m := timer0_millis;
  f := timer0_fract;

  inc(M,MILLIS_INC);
  inc(f,FRACT_INC);

  if (f>= FRACT_MAX) then begin
    f := f - FRACT_MAX;
    m := m + 1;
  end;

  timer0_millis:= m;
  timer0_fract:= f;
  inc(timer0_overflow_count);
end;


procedure delay1ms;// assembler;
// Delay 16 000 cycles
// 1ms at 16 MHz
begin
  asm
      ldi  r18, 21
      ldi  r19, 199
 .L1: dec  r19
      brne .L1
      dec  r18
      brne .L1
  end ['r18','r19'];
end;

procedure delay1us;// assembler;
// Delay 16 cycles
// 1us at 16 MHz
begin
  asm
      ldi  r18, 5
 .L1: dec  r18
      brne .L1
      nop
  end ['r18'];
end;

procedure delay(ms: LongWord);
var
  i : LongWord;
begin
  // this is not excact, but the first try :-)
  for i := 0 to ms do begin
     delay1ms;
  end;
end;

procedure delayMicroseconds(us: LongWord);
var
  i : LongWord;
begin
  // this is not excact, but the first try :-)
  for i := 0 to us do begin
     delay1us;
  end;
end;

function millis(): LongWord;
var
  oldSREG : Byte;
begin
  oldSREG := SREG;
  asm CLI end;//InterruptsDisable;
  Result := timer0_millis;
  SREG:=oldSREG;
  asm SEI end; //InterruptsEnable;
end;

end.

