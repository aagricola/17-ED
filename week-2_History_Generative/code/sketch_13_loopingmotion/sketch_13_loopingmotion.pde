//Amanda Agricola
//looping motion

float w;
float h;

void setup(){
 size(200, 200); 
}

void draw(){
  background(50);
  rectMode(CENTER);
  rect(width/2, height/2, w, h);
  w++;
  if(w < 0 || w > width){
   w = 0; 
  }
  h++;
  if(h < 0 || h > height){
    h = 0;
  }
}