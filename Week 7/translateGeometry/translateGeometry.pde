void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  noFill();
  
  //Moves the origin
  //over 200, 200
  translate(200, 200);
  
  stroke(255, 0, 0);
  line(-50, 0, 50, 0);
  
  //move origin in y 100 more
  translate(0, 100);
  
  stroke(0, 0, 255);
  line(0, -50, 0, 50);
  
  rotate(radians(mouseX));
  
  stroke(0);
  ellipse(0, 0, 100, 50);
  
  rect(-200, -200, 50, 50);
}

void drawCross() {
  
}