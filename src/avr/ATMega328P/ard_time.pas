unit ard_Time;

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

