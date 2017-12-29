ArrayList<Vehicle> vList;
int numVehicles = 10;

void setup() {
  size(1000, 1000);
  vList = new ArrayList<Vehicle>();

  //create a new Vehicle and refer to it by the name "v"
  for (int i=0; i < numVehicles; i++) {
    vList.add(new Vehicle());
    //set the position of v to the middle of the canvas
    vList.get(i).setPosition(random(width), random(height));
  }

  background(255);
}

void draw() {
  //you can print the current mouse position to the console 
  //(at the bottom of the processing code window)
  //println("mouse: "+ mouseX + ", " + mouseY);

  //update position of ALL vehicles
  stroke(0, 150);

  for (int i= 0; i < vList.size(); i++) {

    float targetX, targetY;
    if (i == vList.size() - 1) {
      targetX = mouseX;
      targetY = mouseY;
    } else {
      targetX = vList.get(i+1).x;
      targetY = vList.get(i+1).y;
    }
    
    //rotate towards takes as parameters:
    //targetX, 
    //targetY, 
    //value of 0-1 meaning percent of rotation that would align in direction of target 
    vList.get(i).rotateTowards(targetX, targetY, i / 100.0);

    //calculate a new speed based on distance between V and the mouse
    //see the Processing reference for dist and constrain if either function is new to you
    float distanceFromMouseToV = dist(vList.get(i).x, vList.get(i).y, targetX, targetY);
    float newSpeed = distanceFromMouseToV * .05;
    float maxSpeed = 10;
    float minSpeed = 0;
    vList.get(i).setSpeed(constrain(newSpeed, minSpeed, maxSpeed));

    //vList.get(i).setSpeed(5);

    //move() tells the vehicle to move forward based on its current heading and speed
    vList.get(i).move();

    //draw a line from the vehicle's previous location to its new one
    line(vList.get(i).prevX, vList.get(i).prevY, vList.get(i).x, vList.get(i).y);
  }
}