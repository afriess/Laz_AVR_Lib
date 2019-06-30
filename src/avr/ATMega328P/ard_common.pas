unit ard_Common;
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
  // missing const in ATMega328P
  WGM00 = 0;
  WGM01 = 1;

  CS00 = 0;
  CS01 = 1;

  // defines from C macros
  F_CPU = 16000000; // 16MHZ
  clockCyclesPerMicrosecond =  F_CPU div 1000000;

  // Setup the Hardware to default state, must call first
  procedure ardSetupHW;


implementation

procedure ardSetupHW;
begin
  asm CLI end;//InterruptsDisable;
  // Setup the timeregister and prepare it for use
  //   with Interrupt 16 Timer/Couner0 Overflow
  TCCR0A := TCCR0A or byte(1 shl WGM01);
  TCCR0A := TCCR0A or byte(1 shl WGM00);

  TCCR0B := TCCR0B or byte(1 shl CS01);
  TCCR0B := TCCR0B or byte(1 shl CS00);

  TIMSK0 := TIMSK0 or byte(1 shl TOIE0);

  asm SEI end; //InterruptsEnable;

end;

end.

