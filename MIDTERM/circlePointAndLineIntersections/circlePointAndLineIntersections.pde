//points that make up the lines
float ox = 10, oy = 20;
float circleX = 300;
float circleY = 350;
float circleRad = 75;
float x1 = 50, y1 = 450, x2 = 700, y2 = 650;
PVector intersectPoint = new PVector();

void setup() {
  size(800, 800);
}

void draw() {
  background(200);

  //note that the circle to circle intersection test isn't visualized here.
  //you can try substituting that test for the circle to point test done with the mouse below
  
  //draw the circle we're testing against
  stroke(0);
  fill(255);
  ellipse(circleX, circleY, circleRad*2, circleRad*2);


  //test mouseX/Y if it's inside the circle
  if (pointIsInCircle(mouseX, mouseY, circleX, circleY, circleRad)) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 10, 10);
  

  //test if the mouse controlled line intersects the circle
  if (lineCircleIntersectionTest(ox, oy, mouseX, mouseY, circleX, circleY, circleRad)) {
    stroke(255, 0, 0);
  }
  else {
    stroke(0);
  }
  line(ox, oy, mouseX, mouseY);
  
  
  //test if the mouse controlled line intersects the other line
    if (calculateLineIntersection(x1, y1, x2, y2, ox, oy, mouseX, mouseY, intersectPoint)) {
    stroke(255, 0, 0);
    ellipse(intersectPoint.x, intersectPoint.y, 10, 10);
  } else {
    stroke(0);
  }
  //draw the line we're testing against
  line(x1, y1, x2, y2);

}


//randomize origin of mouse line on key press
void keyPressed() {
  ox = random(0, width);
  oy = random(0, height);
  circleX = random(0, width);
  circleY = random(0, height);
  circleRad = random(10, 300);
}