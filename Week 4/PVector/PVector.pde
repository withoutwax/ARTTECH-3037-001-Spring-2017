PVector pos;


void setup() {
  size(400, 400);
  pos = new PVector(50, 200, 60);
  println(pos.z);
}

void draw() {
  background(200);
  ellipse(pos.x, pos.y, 50, 50);
}

void mousePressed() {
  pos.x = mouseX;
  pos.y = mouseY;
}