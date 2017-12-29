color bg = color(0, 0, 0);

void setup() {
  size(200, 200);
}

void draw() {
  background(bg);
}

void keyPressed() {
  if (key == 'r') {
    bg = color(200, 0, 0);
  } else  if (key == 'g') {
    bg = color(0, 200, 0);
  } else if (key == 'b') {
    bg = color(0, 0, 200);
  }
}