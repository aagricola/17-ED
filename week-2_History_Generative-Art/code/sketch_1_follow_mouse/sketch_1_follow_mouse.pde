//follow mouse 
//Amanda Agricola

void setup(){
  size(600,600);
}

void draw(){
  background(0, mouseX, mouseY);
  ellipse(mouseX, mouseY, 50, 50);
}