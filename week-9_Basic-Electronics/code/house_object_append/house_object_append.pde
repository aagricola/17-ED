//house object
House[] house = new House[1]; //start with an array of just one element
float gravity = 0.1;
color c = 255;

void setup() {
  size(600, 600); 
  background(255);
  house[0] = new House(150, 150, 20, 20, 100); 
  smooth(2);
}

void draw() {
  background(255);
  noFill(); 
  //whatever the length of array, update and display all objects
  for (int i = 0; i < house.length; i++) {
    house[i].gravity();
    house[i].move();
     house[i].drawHouse(c);
  }
}

void mousePressed(){
  //make a new house at the mouse location
 House b = new House(mouseX, mouseY, 20, 20, 100); 
 house = (House[]) append(house, b);
 //color c = color(random(150, 255), random(150, 255), random(150, 255)); 
}