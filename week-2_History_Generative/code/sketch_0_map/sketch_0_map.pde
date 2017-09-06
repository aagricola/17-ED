float xSpeed;
float ySpeed;

void setup(){
  size(600, 600);
  background(255);
  smooth();
}

void draw(){
  stroke(0);
  // speed = distance/time
  xSpeed = abs(mouseX - pmouseX);
  ySpeed = abs(mouseY - pmouseY);
  
  fill(mouseX+180, mouseY+180, 100);
  ellipse(mouseX, mouseY, xSpeed+10, ySpeed+10);
  
  print("x speed: " + xSpeed + "\t");
  println("y speed: " + ySpeed);

}