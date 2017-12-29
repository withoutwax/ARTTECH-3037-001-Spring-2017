void setup() {
  size(600, 600);
}

void draw() {
  background(200);
  scale(3.0);
  drawFace(100, 100, 100);
  
}

void drawFace(float xPosition, float yPosition, float scale) {
  fill(255);
  ellipse(xPosition, yPosition, scale, scale + 40);
  
  drawEye(xPosition-20, yPosition-20, scale/10);
  drawEye(xPosition+20, yPosition-20, scale/10);
    
  drawIris(xPosition-20, yPosition-20, scale/20);
  drawIris(xPosition+20, yPosition-20, scale/20);
  
  drawPupil(xPosition-20, yPosition-20, scale/50);
  drawPupil(xPosition+20, yPosition-20, scale/50);

}

void drawEye(float xPosition, float yPosition, float size) {
  fill(255);
  ellipse(xPosition, yPosition, size + 5, size);
}

void drawIris(float xPosition, float yPosition, float diameter) {
  fill(114, 47, 55);
  ellipse(xPosition, yPosition, diameter, diameter);
  
}

void drawPupil(float xPosition, float yPosition, float diameter) {
  fill(0);
  ellipse(xPosition, yPosition, diameter, diameter);
}