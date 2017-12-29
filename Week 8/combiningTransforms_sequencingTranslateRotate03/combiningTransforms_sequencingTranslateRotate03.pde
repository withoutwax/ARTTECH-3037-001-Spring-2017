int numOfLevels = 6;
int numOfBranches = 4;

void setup() {
  fullScreen();
}

float angle1 = 0, angle2 = 90;
float length1 = 100, length2 = 40;


void draw() {
  background(255);

  
  translate(width/2, height); //move origin to center
  
  rotate(radians(-90));
  drawLine(mouseX, mouseY, false, numOfLevels, numOfBranches);

  
  
  
  resetMatrix();
  fill(0);
  text("Number of Levels: " + numOfLevels, 20, 20);
  text("Number of Branches: " + numOfBranches, 20, 40);
}


void drawLine(float angle, float len, boolean showOrigin, int limit, int branches) {
   if (limit < 1) return;
   //return means exit the function
   
   
    //strokeWeight(tailThickness);
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
    
    for (int i = 0; i < branches; i++) {
      
      float a = map(i, 0, branches-1, -angle, angle);
      rotate(radians(a));
      drawLine(angle, len, showOrigin, limit-1, branches);
      rotate(-radians(a));
    }

    
    //rotate(-abs(radians(angle)));
    //drawLine(-angle, len, showOrigin, limit-1, branches);
    //rotate(abs(radians(angle)));
    
    translate(-len, 0);


}