//be sure you have uploaded standardfirmata to your arduino
import cc.arduino.*;
import processing.serial.*;
import org.firmata.*;
//video library
import processing.video.*;

Movie movie;

int buttonPin = 2;
int buttonState = 0;

Arduino arduino;

//IMPORTANT: Download the syphon library
import codeanticode.syphon.*;

PGraphics canvas;//to do our drawing through this PGraphics instead of the typical method
SyphonServer server;//serves the images to MadMapper

void settings(){
  size (640, 360, P3D);
  PJOGL.profile=1;
}

void setup() {
  canvas = createGraphics(640, 360, P3D);
  // Create syhpon server to send frames out.
  server = new SyphonServer(this, "Processing Syphon");
  background(0);
  
 arduino = new Arduino(this, Arduino.list()[1], 57600); 
 arduino.pinMode(buttonPin, Arduino.INPUT);
  // Load and play the video in a loop
  movie = new Movie(this, "transit.mov");
  //movie.loop();
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  canvas.beginDraw();
  if (movie.available() == true) {
    movie.read(); 
  }
  
   buttonState = arduino.digitalRead(buttonPin);
   if(buttonState == Arduino.HIGH){
  canvas.image(movie, 0, 0, width, height);
  movie.play();
   }else{
     movie.stop();
     canvas.background(0);
   }
   canvas.endDraw();
  image(canvas, 0, 0);
  server.sendImage(canvas);
}