//Vehicle v;
ArrayList<Vehicle> vehicleList;
int numVehicles = 100;

void setup() {
  size(1000, 1000);

  vehicleList = new ArrayList<Vehicle>();
  
  for (int i = 0; i < numVehicles; i++) {
    vehicleList.add(new Vehicle());
    vehicleList.get(i).setPosition(random(0, width), random(0, height));
  }
  
  background(255);
  
}




void draw() {
  
  stroke(0, 10);
  
  
  
  
  for (int i = 0; i < vehicleList.size(); i++) {
    
    float targetX, targetY;
    if (i == vehicleList.size() - 1) {
      targetX = mouseX;
      targetY = mouseY;
    } else {
      targetX = vehicleList.get(i+1).x;
      targetY = vehicleList.get(i+1).y;
    }
    
    //you can print the current mouse position to the console 
    //(at the bottom of the processing code window)
    //println("mouse: "+ mouseX + ", " + mouseY);
  
    //rotate towards takes as parameters:
    //targetY, 
    //value of 0-1 meaning percent of rotation that would align in direction of target 
    vehicleList.get(i).rotateTowards(targetX, targetY, i/100.0);
  
    //calculate a new speed based on distance between V and the mouse
    //see the Processing reference for dist and constrain if either function is new to you
    float distanceFromMouseToV = dist(vehicleList.get(i).x, vehicleList.get(i).y, targetX, targetY);
    float newSpeed = distanceFromMouseToV * .0125;
    float maxSpeed = 8;
    float minSpeed = 0;
    vehicleList.get(i).setSpeed(constrain(newSpeed, minSpeed, maxSpeed));
  
    //move() tells the vehicle to move forward based on its current heading and speed
    vehicleList.get(i).move();
  
    //draw a line from the vehicle's previous location to its new one
    line(mouseX, mouseY, vehicleList.get(i).x, vehicleList.get(i).y);
  }
}


void keyPressed() {
  if ( key == ' ') {
    vehicleList.clear();
  }
}

void mousePressed() {
  //vehicleList.add(new Vehicle(random(0, width), random(0, height)));
}