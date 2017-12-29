int numOfTailes = 10;
int tailThickness = numOfTailes;

void setup() {
  fullScreen();
}

float angle1 = 0, angle2 = 90;
float length1 = 100, length2 = 40;


void draw() {
  background(255);
  
  //angle1 = map(mouseX, 0, width, 0, TWO_PI);
  angle1 = mouseX;
  angle2 = map(mouseY, height, 0, radians(1080), -radians(1080));
  
  translate(width/2, height/2); //move origin to center
  
  /*
  rotate(radians(angle1)); // rotate by angle1
  stroke(255, 0, 0);//draw in red
  line(0, 0, length1, 0); //line along x axis, length of length1
  translate(length1, 0); //move origin to center
  */
  
  //for (int i = 0; i < numOfTailes; i++) {
      drawLine(mouseX, mouseY, false, 2);
   //}
  
  
  
  resetMatrix();
  fill(0);
  text("angle1: " + angle1, 20, 20);
  text("angle2: " + angle2, 20, 40);
}


void drawLine(float angle, float len, boolean showOrigin, int limit) {
   if (limit < 1) return;
   //return means exit the function
   
   
    //strokeWeight(tailThickness);
    rotate(radians(angle));//rotate by angle2
    stroke(255, 0, 0);
    line(0, 0, len, 0); //another line, length2
    //tailThickness--;
    
    if (showOrigin) {
      stroke(0);
      noFill();
      ellipse(0, 0, 5, 5);
    }
    
  if (mousePressed == true) {
    showOrigin = true;
  } else {
    showOrigin = false;
  }
  
  if (keyPressed) {
    if (key == ' ') {
      background(0);
      stroke(255);
      rotate(random(radians(360)));
    }
  }

    translate(len, 0);
    //recursion
    drawLine(angle, len, showOrigin, limit-1);
    drawLine(-angle, len, showOrigin, limit-1);
    
    translate(-len, 0);
    rotate(-radians(angle));

}