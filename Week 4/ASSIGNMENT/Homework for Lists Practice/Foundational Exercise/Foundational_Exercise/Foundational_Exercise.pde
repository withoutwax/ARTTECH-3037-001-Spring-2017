int numberOfDots = 5;
float[] xPosition = new float[numberOfDots];
float[] yPosition = new float[numberOfDots];


void setup() {
  size(600, 600);
  randomizePosition();
}

void randomizePosition() {
  for (int i = 0; i < numberOfDots; i++) {
    xPosition[i] = random(0, width);
    yPosition[i] = random(0, height);
  }
}


void draw() {
  strokeWeight(4);
  background(200);
  
  //line(30, 20, 30, 75);
  
  for (int i = 0; i < numberOfDots; i++) {
    point(xPosition[i], yPosition[i]);
    for (int j = 0; j < numberOfDots; j++) {
      point(xPosition[j], yPosition[j]);
      if (j != i) {
        line(xPosition[i], yPosition[i], xPosition[j], yPosition[j]);
      }
    }
    //Line to connect to the mouse
    //line(xPosition[i], yPosition[i], mouseX, mouseY);
  }
  
}

void keyPressed() {
  if (key == ' ') {
    randomizePosition();
  }
}