//Draw 3 circles in random locations
//HINT: List of x position; List of y positions
//random(min, max)

float a = random(1, 500);
float b = random(1, 500);
float c = random(1, 500);
float d = random(1, 500);
float e = random(1, 500);
float f = random(1, 500);

float[] xPosition = {
  a, b, c
};

float[] yPosition = {
  d, e, f
};


void setup() {
  size(600,600);
  
}

void draw() {
}

void keyPressed() {
  if (key == ' ') {
    for (int i = 0; i < 3; i++) {  
    ellipse(xPosition[i], yPosition[i], 50, 50);
    }
  }
}