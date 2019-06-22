program BlinkExt;

(* This is a part of Laz_AVR_lib
 *
 * copyright (c) 2019 by Andreas Frieß
 *
 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //   This source is free software; you can redistribute it and/or modify   //
 //   it under the terms of the GNU General Public License as published by  //
 //   the Free Software Foundation; either version 2 of the License, or     //
 //   (at your option) any later version.                                   //
 //                                                                         //
 //   This code is distributed in the hope that it will be useful, but      //
 //   WITHOUT ANY WARRANTY; without even the implied warranty of            //
 //   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU      //
 //   General Public License for more details.                              //
 //                                                                         //
 //   A copy of the GNU General Public License is available on the World    //
 //   Wide Web at <http://www.gnu.org/copyleft/gpl.html>. You can also      //
 //   obtain it by writing to the Free Software Foundation, Inc.            //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////
 *)

{$mode objfpc}{$H-}
{$goto on}

uses
  uInterrupts, ard_digitalIO, ard_Time;

procedure setup;
begin
  // Set internal LED to output.
  pinMode(ardLED_BUILTIN,ardOUTPUT);
end;


var
  OnOFF : Boolean;
//=== Entry point =============================================================  
begin
  // Time Setup must called first
  ardTimeSetup;
  //
  setup;
  //=== Main loop =========================================
  while True do
  begin
    // This is not blocking
    // Turn ON/OFF internal LED.
    OnOFF := (((millis div 1000) and $01) = 0);

    digitalWrite(ardLED_BUILTIN,OnOFF);
    // you can do something here
    // .....
  end;//Main loop
  
end.


