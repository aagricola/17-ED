//Amanda Agricola
//Bouncing movement
//derived from Sam Sheffield 

float yPosition = 300;
float xPosition = 300;

float xDirection = 1;
float yDirection = -1;

float r;
float g;
float b;

float xSpeed = 1;
float ySpeed = 2;

float radius = 25;

void setup(){
  size (600, 600);
    background(150);
}

void draw(){
 // background(150);
  fill(r,g,b);
  ellipse(xPosition, yPosition, radius*2, radius*2);

  // There's a better way to do this, as we'll soon see...
  if(xPosition > width - radius){
    xDirection = -1;
     r = random(255);
     g = random(255);
     b = random(255);
  }
  if(xPosition < radius){
    xDirection = 1;
     r = random(255);
     g = random(255);
     b = random(255);
  }

  if(yPosition > height - radius){
    yDirection = -1;
     r = random(255);
     g = random(255);
     b = random(255);
  }
  if(yPosition < radius){
    yDirection = 1;
     r = random(255);
     g = random(255);
     b = random(255);
  }

  xPosition += xSpeed * xDirection;
  yPosition += ySpeed * yDirection;
}