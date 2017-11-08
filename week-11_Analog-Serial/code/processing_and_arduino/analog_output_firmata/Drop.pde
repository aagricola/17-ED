class Drop{
	float x, y, speedY;

	Drop(){
		x = width/2;
		y = 0;
		speedY = 5;
	}

	void update(){
		if(y > height){
      y = 0;
    }
    y += speedY;
	}

	void draw(){
    noStroke();
    fill(#ffb266);
    ellipse(x, y, 20, 20);
	}
}