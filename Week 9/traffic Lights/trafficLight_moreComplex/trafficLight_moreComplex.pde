//traffic light
//define handy variables for colors:
color RED = color(255, 0, 0);
color GREEN = color(0, 255, 0);
color YELLOW = color(255, 255, 0);

//the state of the machine:
//r means red, g means green, y means yellow
String state = "g";

int timestamp = 0;

void setup() {
  size(600, 600);
}

void draw() {
  background(0);

  int timeNow = millis();
  int timeInState = timeNow - timestamp;
  
  if (state == "r") {
    renderRedLight();
    if (timeInState > 2000) {
      enterGreenState();
    }
  } else if (state == "g") {
    renderGreenLight();
    if (timeInState > 4000) {
      enterYellowState();
    }
  } else if (state == "y") {
    renderYellowLight();
    if (timeInState > 1000) {
      enterRedState();
    }
  }
}

void keyPressed() {
  if (key == ' ') {
    
    if (state == "g") {
      enterYellowState();
    } 
    
    //else if (state == "y") {
    //  enterRedState();
    //} else if (state == "r") {
    //  enterGreenState();
    //}
  }
}