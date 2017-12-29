Vehicle v;
ArrayList<PVector> vehicleList;

void setup() {
  size(1000, 1000);

  //create a new Vehicle and refer to it by the name "v"
  v = new Vehicle();
  vehicleList = new ArrayList<PVector>();

  //set the position of v to the middle of the canvas
  v.setPosition(random(width/2), random(height/2));
  
}

void draw() {
  
  for (int i = 0; i < vehicleList.size(); i++) {
  
  //you can print the current mouse position to the console 
  //(at the bottom of the processing code window)
  //println("mouse: "+ mouseX + ", " + mouseY);

  //rotate towards takes as parameters:
  //targetX, 
  //targetY, 
  //value of 0-1 meaning percent of rotation that would align in direction of target 
  v.rotateTowards(mouseX, mouseY, .4);

  //calculate a new speed based on distance between V and the mouse
  //see the Processing reference for dist and constrain if either function is new to you
  float distanceFromMouseToV = dist(v.x, v.y, mouseX, mouseY);
  float newSpeed = distanceFromMouseToV * .025;
  float maxSpeed = 8;
  float minSpeed = 0;
  v.setSpeed(constrain(newSpeed, minSpeed, maxSpeed));

  //move() tells the vehicle to move forward based on its current heading and speed
  v.move();

  //draw a line from the vehicle's previous location to its new one
  line(v.prevX, v.prevY, v.x, v.y);
  }
}

void keyPressed() {
  if ( key == ' ') {
    vehicleList.clear();
  }
}

void mousePressed() {
  vehicleList.add(new PVector(random(width/2), random(height/2)));
}