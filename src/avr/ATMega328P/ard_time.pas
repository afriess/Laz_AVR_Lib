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

// Pauses the program for the amount of time (in milliseconds)
// https://www.arduino.cc/reference/en/language/functions/time/delay/
procedure delay(ms : LongWord);

implementation

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

procedure delay(ms: LongWord);
var
  i : LongWord;
begin
  // this is not excact, but the first try :-)
  for i := 0 to ms do begin
     delay1ms;
  end;
end;

end.

