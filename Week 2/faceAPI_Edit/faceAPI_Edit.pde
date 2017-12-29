void setup() {
  size(600, 600);
}

void draw() {
  background(200);
  scale(3.0);
  drawFace(mouseX, mouseY, 100);
  drawEye(mouseX, mouseY, 10);
  drawIris(mouseX, mouseY, 5);
  drawPupil(mouseX, mouseY, 2);
  
}

void drawFace(float xPosition, float yPosition, float scale) {
  fill(255);
  ellipse(xPosition, yPosition, scale, scale + 40);
}

void drawEye(float xPosition, float yPosition, float size) {
  fill(255);
  ellipse(xPosition-20, yPosition-20, size + 5, size);
  ellipse(xPosition+20, yPosition-20, size + 5, size);
}

void drawPupil(float xPosition, float yPosition, float diameter) {
  fill(0);
  ellipse(xPosition-20, yPosition-20, diameter, diameter);
  ellipse(xPosition+20, yPosition-20, diameter, diameter);
}

void drawIris(float xPosition, float yPosition, float diameter) {
  fill(114, 47, 55);
  ellipse(xPosition-20, yPosition-20, diameter, diameter);
  ellipse(xPosition+20, yPosition-20, diameter, diameter);
  
}