class House {
  //house variables
  float x, y, w, h, houseD, speed; 
  //house constructor
  House(float tempX, float tempY, float tempW, float tempH, float tempHouseD) { 
    x = tempX;
    y = tempY;
   w =tempW;
   h = tempH;
    houseD = tempHouseD;
    speed = 0;
  }
  
  void gravity(){
   //add gravity to speed
   speed = speed + gravity;
  }
  
  void move(){
   //add speed to y location
   y = y +speed;
   //if house reaches the bottom, revese speed
   if(y > height){
    speed = speed * -0.95;
    y = height;
   }
  }

  void drawHouse(color houseColor) {
    //house
    fill(houseColor);
    rect(x, y, houseD, houseD);
    //windows
    for (float i = x+10; i < x+houseD; i = i+30) {
      stroke(0); 
      rect(i, y+10, w, h);
    }
    fill(100);
    //roof
    triangle(x, y, x+houseD/2, y-houseD/2, x+houseD, y);
    //door 
    rect(x+40, y+60, w, h*2);
  }
}