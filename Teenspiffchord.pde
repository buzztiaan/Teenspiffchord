#include <Versalino.h>
#include <dht11.h>

// teenspiffchord v1 
// - reinvented spiffchorder
// - ment for teensy 2.0 (atmega32u4) but might work on others

#include <Bounce.h>
#include "nasa_us.h"

#define DEBOUNCE_TIMEOUT 10
#define TYPETIME 500          // 500 for noooooobs

Bounce button0 = Bounce(0, DEBOUNCE_TIMEOUT);
Bounce button1 = Bounce(1, DEBOUNCE_TIMEOUT);
Bounce button2 = Bounce(2, DEBOUNCE_TIMEOUT);
Bounce button3 = Bounce(3, DEBOUNCE_TIMEOUT);
Bounce button4 = Bounce(19, DEBOUNCE_TIMEOUT);
Bounce button5 = Bounce(20, DEBOUNCE_TIMEOUT);
Bounce button6 = Bounce(21, DEBOUNCE_TIMEOUT);

unsigned long presstime;
boolean pressed;
int chordvalue;
int keymapmode;
int pressedkey;
int shiftmode;
int buttonsheld;
int dhtinit;
float dhthumidity;
float dhttemperature;
int currentmodifier;

dht11 DHT11;

const int ledPin = 11;  

#define FUNCTION_MODE 1
#define NUMBER_MODE 2
#define DEFAULT_MODE 3

#define SHIFT 1

int getkey(int value, int keymap) {
  int key;
  if (keymap == FUNCTION_MODE) {
    key = keymap_function[value];
  } else if (keymap == NUMBER_MODE) {
    key = keymap_numsym[value];
  } else {
    key = keymap_default[value];
  }
 return key;
}

void processchord(int value) {

  pressedkey = getkey(value,keymapmode);
      
  if (pressedkey == MODE_FUNC) {
    // set function mode
    keymapmode = FUNCTION_MODE;
  } else if (pressedkey == MODE_NUM) {
    // set number mode
    keymapmode = NUMBER_MODE;
  } else if (pressedkey == MODE_RESET) {
    // set mode back to default mode
    keymapmode = DEFAULT_MODE;
  } else if (pressedkey == SHIFTMODE) {
    // pressed shift
    shiftmode = SHIFT;
    currentmodifier = (currentmodifier | MODIFIERKEY_SHIFT);
  } else if (pressedkey == ALTSHIFTMODE) {
    // pressed alt
    shiftmode = SHIFT;
    currentmodifier = (currentmodifier | MODIFIERKEY_ALT);
  } else if (pressedkey == CTRLSHIFTMODE) {
    // pressed ctrl
    shiftmode = SHIFT;
    currentmodifier = (currentmodifier | MODIFIERKEY_CTRL);
  } else if (pressedkey == NUMSHIFTMODE) {
    // pressed numshiftmode ( N+C )
    shiftmode = SHIFT;
    currentmodifier = (currentmodifier | MODIFIERKEY_SHIFT);
    keymapmode = NUMBER_MODE;
  } else if (pressedkey == MACRO_quotes) {
    if (shiftmode) {
      Keyboard.set_modifier(currentmodifier);
      Keyboard.send_now();
      shiftmode = 0;
      currentmodifier = 0;
    }
    Keyboard.set_key1(KEY_QUOTE);
    Keyboard.set_key2(KEY_QUOTE);
    Keyboard.set_key3(KEY_LEFT);
    Keyboard.send_now();

    delay(10);
    releasekeys();
        
// #define MACRO_00 144
// #define MACRO_000 145
// #define MACRO_parens 146

  } else if (pressedkey == KEY_DHT11MODE) {
    //MOEHAAAAA
    // DHT11 readout ;)
    
    dhtinit = DHT11.read();
        
    switch (dhtinit) {
      case 0: break;
      case -1: Keyboard.println("Checksum error"); break;
      case -2: Keyboard.println("Time out error"); break;
      default: Keyboard.println("Unknown error"); break;
    }

    Keyboard.print("Humi: ");
    Keyboard.println((float)DHT11.humidity, DEC);
    Keyboard.print("Temp: ");
    Keyboard.println((float)DHT11.temperature, DEC);
  
  } else {
    // normal chord, just print the output :D

    if (shiftmode) {
      Keyboard.set_modifier(currentmodifier);
      Keyboard.send_now();
      shiftmode = 0;
      currentmodifier = 0;
    }
    Keyboard.set_key1(pressedkey);
    Keyboard.send_now();
    delay(10);
    releasekeys();
    keymapmode = DEFAULT_MODE;
  }
  return;
}

void releasekeys() {
  Keyboard.set_modifier(0);
  Keyboard.set_key1(0);
  Keyboard.set_key2(0);
  Keyboard.set_key3(0);
  Keyboard.set_key4(0);
  Keyboard.set_key5(0);
  Keyboard.set_key6(0);
  Keyboard.send_now();

  return;
}

void setup() {
  pinMode(0, INPUT_PULLUP);
  pinMode(1, INPUT_PULLUP);
  pinMode(2, INPUT_PULLUP);
  pinMode(3, INPUT_PULLUP);
  pinMode(19, INPUT_PULLUP);
  pinMode(20, INPUT_PULLUP);
  pinMode(21, INPUT_PULLUP);
  
  pinMode(ledPin, OUTPUT);
  
  DHT11.attach(9);
}

void loop() {
  button0.update();
  button1.update();
  button2.update();
  button3.update();
  button4.update();
  button5.update();
  button6.update();

  if (!pressed) { 
    if (chordvalue) { 
      releasekeys(); 
    }
    chordvalue = 0; 
    buttonsheld = 0; 
    digitalWrite(ledPin, LOW);
  }

  if (button0.fallingEdge()) {
    if (!pressed) {
      pressed=true;
      presstime=millis();
    }
    buttonsheld++;
    chordvalue += 1;
  }
  if (button1.fallingEdge()) {
    if (!pressed) {
      pressed=true;
      presstime=millis();
    }
    buttonsheld++;
    chordvalue += 2;
  }
  if (button2.fallingEdge()) {
    if (!pressed) {
      pressed=true;
      presstime=millis();
    }
    buttonsheld++;
    chordvalue += 4;
  }
  if (button3.fallingEdge()) {
    if (!pressed) {
      pressed=true;
      presstime=millis();
    }
    buttonsheld++;
    chordvalue += 8;
  }
  if (button4.fallingEdge()) {
    if (!pressed) {
      pressed=true;
      presstime=millis();
    }
    buttonsheld++;
    chordvalue += 16;
  }
  if (button5.fallingEdge()) {
    if (!pressed) {
      pressed=true;
      presstime=millis();
    }
    buttonsheld++;
    chordvalue += 32;
  }
  if (button6.fallingEdge()) {
    if (!pressed) {
      pressed=true;
      presstime=millis();
    }
    buttonsheld++;
    chordvalue += 64;
  }

  if (button0.risingEdge()) {
    buttonsheld--;
  }
  if (button1.risingEdge()) {
    buttonsheld--;
  }
  if (button2.risingEdge()) {
    buttonsheld--;
  }
  if (button3.risingEdge()) {
    buttonsheld--;
  }
  if (button4.risingEdge()) {
    buttonsheld--;
  }
  if (button5.risingEdge()) {
    buttonsheld--;
  }
  if (button6.risingEdge()) {
    buttonsheld--;
  }
  
  if (buttonsheld == 0) {
    pressed = false;
  }

  if (pressed) {
    digitalWrite(ledPin, HIGH);
  }

  if (chordvalue) {
    if ((presstime + TYPETIME) < millis()) {
      processchord(chordvalue); 
//      pressed = false;      
    } else if (buttonsheld == 0) {
      processchord(chordvalue);
      pressed = false;      
    }
  }

}

