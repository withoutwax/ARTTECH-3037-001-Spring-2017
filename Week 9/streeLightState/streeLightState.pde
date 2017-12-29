String state = "r";
String superState = "N";
color RED = color(255, 0, 0);
color GREEN = color(0, 255, 0);
color YELLOW = color(255, 255, 0);


int timestamp = 0;
int globalTime;
int timeInState;

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  if (superState == "N") {
  streetLight();
  } 
  else if (superState == "E") {
    emergencyMode();
  }
  
  if (superState == "N") {
    text("Timer: " + str(timeInState/1000), 10, 10);
  } else if (superState == "E") {
    text("EMERGENCY", 10, 10);
  }

}




void keyPressed() {
  if (key == 'r') {
    state = "r";
    timestamp = millis();
  } else if (key == 'g') {
    state = "g";
    timestamp = millis();
  } else if (key == 'y') {
    state = "y";
    timestamp = millis();
  }
  else if (key == 'e') {
    superState = "E";
  } 
  else if (key == 'n') {
    superState = "N";
    state = "r";
  }
  
  
  if (key == ' ') {
    timestamp = millis();
    if (state == "r") {
      state = "g";
    } else if (state == "y") {
      state = "r";
    } else if (state == "g") {
      state = "y";
    }
  }
}