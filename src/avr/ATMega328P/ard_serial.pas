unit ard_Serial;
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
{$modeswitch ADVANCEDRECORDS}

{$goto on}
interface

type

  { TSerial }

  TSerial = record
    procedure ardBegin(baud: LongWord);
    procedure ardEnd;
    function ardWrite(val:byte):word;
    function ardWrite(val: ShortString): word;
    function ardAvailable:integer;
    function ardRead:byte;
  end;

// Some supportfuntions
function CalcUBBR(Freq, Baud:LongWord):byte;

implementation

uses
  ard_Common;

// see https://wiki.freepascal.org/AVR_Embedded_Tutorial_-_UART/de
// see https://www.mikrocontroller.net/articles/AVR-Tutorial:_UART
//const
//  Baud      = 9600;     // Baudrate
//  Teiler   = ((F_CPU * (Baud * 8)) div ((Baud * 16))) - 1;


const
  RXBufLen = 16; // Puffergrösse
  TXBufLen = 16; // Puffergrösse
var
  // definition for receive
  RXBuf:   array[0..RXBufLen - 1] of byte;
  RXread:  byte = 0;
  RXwrite: byte = 0;

  // definition for transmit
  TXBuf:   array[0..TXBufLen - 1] of byte;
  TXread:  byte = 0;
  TXwrite: byte = 0;


function CalcUBBR(Freq, Baud:LongWord):byte;
begin
  // formular see https://www.mikrocontroller.net/articles/AVR-Tutorial:_UART
  Result :=  (((Freq * (Baud * 8)) div ((Baud * 16))) - 1) and $000000FF;
end;

procedure TSerial.ardBegin(baud: LongWord);
var
  divisor: byte;
begin
  divisor := CalcUBBR(F_CPU,baud);
  // activate only the receive interrupt, because the transferbuffer is empty
  //   activating of the transmit interupt must be handled by the
  //   sending routine.
  UBRR0  := F_CPU div (16 * 9600) - 1;
  UCSR0A := (0 shl U2X0);
  UCSR0B := (1 shl TXEN0) or (1 shl RXEN0) or (1 shl RXCIE0);
  UCSR0C := %011 shl UCSZ0;
end;

procedure TSerial.ardEnd;
begin
  asm CLI end;//InterruptsDisable;
  // disable receive
  UCSR0B := UCSR0B and not (1 shl RXCIE0);
  // disable transmit
  UCSR0B := UCSR0B and not (1 shl UDRIE0);
  asm SEI end; //InterruptsEnable;
end;

function TSerial.ardWrite(val: byte): word;
begin
  TXBuf[TXwrite] := val;
  Inc(TXwrite);
  if TXwrite >= TXBufLen then begin
    TXwrite := 0;
  end;
  // activate interrupt.
  UCSR0B := UCSR0B or (1 shl UDRIE0);
  Result := 1;
end;

function TSerial.ardWrite(val: ShortString): word;
var
  i : byte;
begin
  // fill circularbuffer with data
  for i := 1 to Length(val) do begin
    ardWrite(byte(val[i]));
  end;
  Result := Length(val);
end;

function TSerial.ardAvailable: integer;
begin
  if (RXwrite = RXread) then
    Result := -1
  else
    Result := 1;
end;

function TSerial.ardRead: byte;
begin
  // wait for a byte
  while RXwrite <> rxread do begin
    // disable interrupt
    asm cli end;
    // read a byte from buffer
    Result := RXBuf[rxread];
    Inc(RXread);
    if RXread >= RXBufLen then begin
      RXread := 0;
    end;
    // enble interrupt
    asm sei end;
  end;
end;

//--- Interrupt 18 USART Rx Complete ---
Procedure USART__RX_ISR; Alias: 'USART__RX_ISR'; Interrupt; Public;
var
  b: byte;
begin
  // read char form register
  b := UDR0;
  // write char in buffer
  if b <> 0 then begin
    RxBuf[rxwrite] := b;
    Inc(RXwrite);
    if RXwrite >= RXBufLen then begin
      RXwrite := 0;
    end;
  end;
end;

//--- Interrupt 19 USART, Data Register Empty ---
Procedure USART__UDRE_ISR; Alias: 'USART__UDRE_ISR'; Interrupt; Public;
begin
  // sent char
  UDR0 := TXBuf[TXread];

  // inc circular buffer
  Inc(TXread);
  if TXread >= TXBufLen then begin
    TXread := 0;
  end;

  // if circular buffer is empty, no interrupt required anymore
  if TXread = TXwrite then begin
    UCSR0B := UCSR0B and not (1 shl UDRIE0);
  end;
end;


end.

