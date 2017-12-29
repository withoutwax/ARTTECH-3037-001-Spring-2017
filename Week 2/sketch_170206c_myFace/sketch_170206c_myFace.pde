//1. Write a function/method that draws a simple face
//call the function inside void draw()
//save the sketch with a sensible name

//2. save as a new sketch
//add two parameters to the function that tell the face an x/y location to draw itself


//useful:
/*
size(width, height);
ellipse(x, y, width, height);
rect(x, y, width, height);
line(x, y, x2, y2);
*/


void setup() {
  
  size(350, 350);
  
}


void drawFace() {
  ellipse(100, 100, 100, 140);
  ellipse(80, 80, 10, 10);
  ellipse(120, 80, 10, 10);
  ellipse(100, 100, 10, 10);
  line(80, 125, 120, 125);
  }


void draw() {

  drawFace();
  
}