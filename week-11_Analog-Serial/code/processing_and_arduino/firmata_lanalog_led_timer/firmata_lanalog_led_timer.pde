int ledPin = 9; // LED is connected to PWM pin 3
int pwmValue; // Stores the number to send to ledPin3
int s;
// Needed for Arduino communication using Firmata
import processing.serial.*;
import cc.arduino.*;

// Control the Arduino as an object
Arduino arduino;

void setup(){
   // Run this sketch and replace the 0 in Arduino.list()[] by choosing your Arduino from the list printed in the console (it will look like "/dev/tty.usbmodem..."). 
  // The count will start at 0! Make sure your Arduino is plugged in first!
  arduino = new Arduino(this, Arduino.list()[3], 57600); // The last argument (57600) sets the communication speed
  
}

void draw(){
int s = second();
s = int(map(s,0, 59, 0, 255));
 background(s);
 
 println(s);
 arduino.analogWrite(ledPin, s);
 //pwmValue = int(backgroundColor);
 //arduino.analogWrite(ledPin, pwmValue);
}