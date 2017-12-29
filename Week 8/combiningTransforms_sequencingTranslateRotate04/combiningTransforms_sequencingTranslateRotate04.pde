int numOfLevels = 6;
int numOfBranches = 2;

void setup() {
  fullScreen();
}



void draw() {
  background(255);

  
  translate(width/2, height); //move origin to center
  
  rotate(radians(-90));
  drawLine(mouseX, mouseY, false, numOfLevels, numOfBranches);

  
  
  
  resetMatrix();
  fill(0);
  text("Number of Levels: " + numOfLevels, 20, 20);
  if (numOfBranches == 9) {
    text("Number of Branches: " + "MAX", 20, 40);
  } else {
    text("Number of Branches: " + numOfBranches, 20, 40);
  }
  
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

void keyPressed() {
  if (key == '2') {
    numOfBranches = 2;
  } else if (key == '3') {
    numOfBranches = 3;
  } else if (key == '4') {
    numOfBranches = 4;
  } else if (key == '5') {
    numOfBranches = 5;
  } else if (key == '6') {
    numOfBranches = 6;
  } else if (key == '7') {
    numOfBranches = 7;
  } else if (key == '8') {
    numOfBranches = 8;
  } else if (key == '9') {
    numOfBranches = 9;
  } else if (key == '0') {
    numOfBranches = 0;
  }
}