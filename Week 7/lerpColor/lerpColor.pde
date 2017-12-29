color c;
color r = color(255, 0, 0);
color g = color(0, 255, 0);
color b = color(0, 0, 255);
color cyan = color(0, 255, 255);


void setup() {
size(600,600);  

colorMode(RGB, 255, 255, 255);
}

void draw() {
  //use mouseX to control a value [0-1]
  float amount = mouseX / float(width);
  
  //interpolate between two colors nased on amout
  c = lerpColor(r, cyan, amount);
  
  background(c);
  
  fill(0);
  text(amount, 20, 20);
  text("R:" + red(c), 20, 40);
  text("G:" + green(c), 20, 60);
  text("B:" + blue(c), 20, 80);
}