//traffic light
//define handy variables for colors:
color RED = color(255, 0, 0);
color GREEN = color(0, 255, 0);
color YELLOW = color(255, 255, 0);

//the state of the machine:
//r means red, g means green, y means yellow
String state = "g";

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  if (state == "r") {
    renderRedLight();
  }
  else if (state == "g") {
    renderGreenLight();
  }
  else if (state == "y") {
    renderYellowLight();
  }
}

void keyPressed() {
  if (key == ' ') {
    if (state == "g") {
      state = "y";
    }
    else if (state == "y") {
      state = "r";
    } 
    else if (state == "r") {
      state = "g";
    }
  }
}