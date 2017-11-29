//notice that we do not have to call PImage, simply var 
var img;
var imgMask;

function preload() {
  //image loaded the same way
  img = loadImage("assets/undoctored.jpg");
  imgMask = loadImage("assets/doctored.png");
}

function setup() {
  createCanvas(810, 1080);
  img.mask(imgMask);
  imageMode(CENTER);
}

function draw() {
  background(0, 102, 153);
  //image called the same way
  image(img, width/2, height/2);
  image(img, mouseX, mouseY);
}
