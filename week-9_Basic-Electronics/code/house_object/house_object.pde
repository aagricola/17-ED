//house object
//moved global variables to the class
House house;// Declare car object as a globle variable.

void setup() {
  size(400, 400);
  background(255);
  // Initialize the object in setup() by calling constructor.
  //object is made with the new operator.
  house = new House(150, 150, 20, 20, 100);
  smooth(2);
}

void draw() {
  background(255);
  noFill();
  //variables for the x, y locations to calculate dist
  float x = 150;
  float y = 150;
  // A color based on distance from the mouse
  float d = dist(x, y, mouseX, mouseY);
  color c = color(d);
  // mouseX position determines speed factor for houseQuake function
  float factor = constrain(mouseX/10, 0, 5);
  // Operate object in draw() by calling 
  // object methods using the dot syntax.
  //funtions in the object are called methods
  house.houseQuake(factor);
  house.drawHouse(c);
}
