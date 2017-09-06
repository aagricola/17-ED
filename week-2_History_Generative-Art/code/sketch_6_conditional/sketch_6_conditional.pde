//Amanda Agricola
//incramentation, bounce, conditional

//Variables must have a type and a name 
//Once you declare a variable, then you can assign it a value by setting it equal to something
int x = 0;
int speed = 1;
int radius = 25;

   void setup() {
     size(500, 200);
} 
    void draw() {
     background(255);
     stroke(0);
     fill(175);
     //change the x location using the speed variable
     x = x + speed;
     //if we reach an edge, reverse speed
     if((x - radius > width) || (x + radius < 0)){
      speed = speed * -1; 
     }
     ellipse(x, height/2, radius*2, radius*2);
}