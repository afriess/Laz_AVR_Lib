# Laz_AVR_Lib

## Description
A library for Lazarus (FPC) to be source compatible with arduino. With this library it is easier to convert sketches from Arduino to Lazarus.

It is not perfrect and for study/learning, but working for me.

## Samples

### Lazarus
#### Blocking
    procedure setup;
    begin
      pinMode(ardLED_BUILTIN,ardOUTPUT); // Set internal LED to output.
    end;
    
    begin
      setup;
      while True do
      begin
        digitalWrite(ardLED_BUILTIN,ardHIGH); 
        delay(1000);
        digitalWrite(ardLED_BUILTIN,ardLOW);
        delay(1000);
      end;//Main loop
    end.
  
  #### Non blocking
    procedure setup;
    begin
      pinMode(ardLED_BUILTIN,ardOUTPUT);
    end;
    
    var
      OnOFF : Boolean;
    begin
      ardTimeSetup;
      setup;
      while True do
      begin
        OnOFF := (((millis div 1000) and $01) = 0);
        digitalWrite(ardLED_BUILTIN,OnOFF);
        // you can do something here
      end;//Main loop
    end.

  
  
  ### Arduino
  #### Blocking
    void setup() {
      pinMode(LED_BUILTIN, OUTPUT);
    }
    
    void loop() {
      digitalWrite(LED_BUILTIN, HIGH);   
      delay(1000);                       
      digitalWrite(LED_BUILTIN, LOW);   
      delay(1000);                       
    }


