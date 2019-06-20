program Blink;
{$mode objfpc}{$H-}
{$goto on}

uses
  uInterrupts, ard_digitalIO, ard_Time;

const
  InternalLED = 13; // internal LED is connected on Arduino Uno.

procedure setup;
begin
  // Set internal LED to output.
  pinMode(InternalLED,ardOUTPUT);
end;


//=== Entry point =============================================================  
begin

  setup;
  //=== Main loop =========================================
  while True do
  begin

    //// Turn OFF internal LED.
    digitalWrite(InternalLED,ardHIGH);

    //SomeDelay;
    delay(1000);

    // Turn ON internal LED.
    digitalWrite(InternalLED,ardLOW);

    delay(1000);
  end;//Main loop
  
end.


