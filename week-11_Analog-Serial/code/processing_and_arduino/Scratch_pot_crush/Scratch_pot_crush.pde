/**
 * Scratch using Potentiometer
 * 
 * Move the pot to set  
 * the position in the movie file.
 */
// Needed for Arduino communication using Firmata
import processing.serial.*;
import cc.arduino.*;
//import  video library
import processing.video.*;

Arduino arduino;
int potPin = 0; // The analog pin a potentiometer, or other analog input, is connected to
int potValue; // For storing the analog value from the potentiometer

Movie mov;

void setup() {
  size(1280, 800);
  background(0);
  
  println(Arduino.list());
  println(potValue);
  // Run this sketch and replace the 0 in Arduino.list()[] by choosing your Arduino from the list printed in the console (it will look like "/dev/tty.usbmodem..."). 
  // The count will start at 0! Make sure your Arduino is plugged in first!
  arduino = new Arduino(this, Arduino.list()[3], 57600);
  
  mov = new Movie(this, "crush.mov");

  // Pausing the video at the first frame. 
  mov.play();
  mov.jump(0);
  mov.pause();
}

void draw() {
  potValue = arduino.analogRead(potPin);
  
  if (mov.available()) {
    mov.read();
    // A new time position is calculated using the current mouse location:
    float f = map(potValue, 0, 1023, 0, 1);
    float t = mov.duration() * f;
    mov.play();
    mov.jump(t);
    mov.pause();
          println(potValue);

  }  

  image(mov, 0, 0);
}