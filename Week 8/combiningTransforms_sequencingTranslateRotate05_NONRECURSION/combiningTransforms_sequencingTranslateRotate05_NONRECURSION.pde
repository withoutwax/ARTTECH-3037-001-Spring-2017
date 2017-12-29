ArrayList<Branches> branch;

int numOfLevels = 6;
int numOfBranches = 2;
int lengthOfTrunk = 100;

void setup() {
  fullScreen();
  branch = new ArrayList<Branches>();
}

float angle1 = 20, angle2 = 90;
float length1 = 100, length2 = 40;


void draw() {
  background(255, 250, 240);
  
  
  translate(width/2, height); //move origin to center  
  rotate(radians(-90));
  
  strokeWeight(8);
  line(0, 0, lengthOfTrunk, 0);
  
  translate(lengthOfTrunk, 0);
  branch.add(new Branches(50, 50, false, numOfLevels, numOfBranches, numOfBranches+2));
  //wiggle();
  

  
  
  resetMatrix();
  fill(0);
  text("Number of Levels: " + numOfLevels, 20, 20);
  if (numOfBranches == 9) {
    text("Number of Branches: " + "MAX", 20, 40);
  } else {
    text("Number of Branches: " + numOfBranches, 20, 40);
  }
  
}


void wiggle() {
  angle1 += random(-.15, .15);
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