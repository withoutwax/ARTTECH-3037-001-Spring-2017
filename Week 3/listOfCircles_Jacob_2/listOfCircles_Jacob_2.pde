int numCircles = 1100;
float[] xPosition = new float[numCircles];
float[] yPosition = new float[numCircles];
color[] col = new color[numCircles];

void setup() {
  size(600, 600);
  randomizePosition();
  randomizeColor();
}

void randomizePosition() {
  for (int i = 0; i < numCircles; i++) {
      xPosition[i] = random(0, width);
      yPosition[i] = random(0, height);
    }
}

void randomizeColor() {
  for (int i = 0; i < numCircles; i++) {
    col[i] = color(random(0, 255), random(0, 255), random(0, 255));  
  }
}

void draw() {
  background (200);
  
  for (int i = 0; i < numCircles; i++) {
    fill(col[i]);
    ellipse(xPosition[i], yPosition[i], 50, 50);
    
  }
}

void keyPressed() {
  if (key == ' ') {
    randomizePosition();
  } else if (key == 'c') {
    randomizeColor();
  }
}