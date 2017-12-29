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
  
  size(600, 600);
  
}


void drawFace(float faceX, float faceY) {
  ellipse(faceX + 100, faceY + 100, 100, 140);
  ellipse(faceX + 80, faceY + 80, 10, 10);
  ellipse(faceX + 120, faceY + 80, 10, 10);
  ellipse(faceX + 100, faceY + 100, 10, 10);
  line(faceX + 80, faceY + 125, faceX + 120, faceY + 125);
  }


void draw() {
  background(209);
  //this code refreshes the background so that it does not make a history of the path.
  
  drawFace(mouseX, mouseY);
  
}