/*
things you can tell a vehicle to do:
(here, assuming your vehicle variable is called myVehicle)

//directly set the vehicle's position [0-width, 0-height]
myVehicle.setPosition(x, y);

//directly set the direciton the vehicle is pointing, [0-360]
myVehicle.setHeading(angle);

//directly set the speed the vehicle is moving at [pixels per update]
myVehicle.setSpeed(speed);

//change the speed the vehicle is moving at [pixels per update]
myVehicle.adjustSpeed(speed);

//adjust the heading - this means add this angle to the current heading
[-360 - +360]
myVehicle.adjustHeading(angleChange);

//rotate some amount towards a target
[targetX, targetY, 0-1]
myVehicle.rotateTowards(x, y, percentage);

//you always have to call this function to update position based on heading:
myVehicle.move();

*/

class Vehicle {
  //public fields:
  public float heading = 0;
  public float speed = 0;
  public float x=0, y=0;
  public float prevX=0, prevY=0;
  
  public Vehicle() {
    prevX = x;
    prevY = y;
  }
  
  public void setSpeed(float newSpeed) {
    speed = newSpeed; 
  }
  
  public void adjustSpeed(float speedChange) {
    speed += speedChange;
  }
  
  public void move() {
    prevX = x;
    prevY = y;

    x += speed * cos(radians(heading));
    y += speed * sin(radians(heading));
  }
  
  public void setHeading(float degrees) {
    heading = degrees;
    heading %= 360;
    heading += 360;
    heading %= 360;
  }
  
  public void adjustHeading(float degrees) {
    heading += degrees;
    heading %= 360;
    heading += 360;
    heading %= 360;
  }
  
  public void setPosition(float newX, float newY) {
    x = newX;
    y = newY;
  }
  
  
  //x,y is the target, amount is 0-1 for 0 - 100% of the way
  public void rotateTowards(float targetX, float targetY, float amount) {
    float targetHeadingX = targetX-x;
    float targetHeadingY = targetY-y;
    float targetHeading = degrees(atan2(targetHeadingY, targetHeadingX));
    
    float diff = (targetHeading - heading) % 360;
    float absDiff = abs(diff);
    float otherDiff = 360 - absDiff;
    
    //println(targetHeading - heading);
    //println(heading + "\t" + targetHeading + "\t" + diff1 + "\t" + diff2);

    if (absDiff < abs(otherDiff)) {
      heading += diff * amount;
    }
    else {
      heading += otherDiff * amount;
    }

    heading += 360;
    heading %= 360;
  }
  
}