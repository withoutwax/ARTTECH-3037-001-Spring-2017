int numCircles = 1100;
float[] xPosition = new float[numCircles];
float[] yPosition = new float[numCircles];

void setup() {
  size(600, 600);
  randomization();
}

void randomization () {
  for (int i = 0; i < numCircles; i++) {
      xPosition[i] = random(0, width);
      yPosition[i] = random(0, height);
    }
}

void draw() {
  background (200);
  
  for (int i = 0; i < numCircles; i++) {
    ellipse(xPosition[i], yPosition[i], 50, 50);
  }
}

void keyPressed() {
  if (key == ' ') {
    randomization();
  }
}