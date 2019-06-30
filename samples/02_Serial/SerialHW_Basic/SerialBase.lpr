program SerialBase;

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
  ard_Common, ard_digitalIO, ard_Time, ard_Serial;

procedure setup;
begin
  // Set internal LED to output.
  pinMode(ardLED_BUILTIN,ardOUTPUT);
end;

var
  OnOFF : Boolean;
  Serial : TSerial;
//=== Entry point =============================================================  
begin
  // Hardware Setup must called first
  ardSetupHW;
  //
  setup;
  //=== Main loop =========================================
  Serial.ardBegin(19200);
  OnOFF:= true;
  while True do
  begin
    digitalWrite(ardLED_BUILTIN,OnOFF);
    Serial.ardWrite('AB x'+#10);
    delay(2000);
    OnOFF:= not OnOFF;
    // .....
  end;//Main loop
  
end.


