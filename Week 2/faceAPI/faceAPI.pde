void setup() {
  size(600, 600);
}

void draw() {
  background(200);
  drawFace(mouseX, mouseY);
}

void drawFace(float xPosition, float yPosition, float scale) {...}
void drawEye(float xPosition, float yPosition, float size) {...}
void drawPupil(float xPosition, float yPosition, float diameter) {...}
void drawIris(float xPosition, float yPosition, float diameter) {...}