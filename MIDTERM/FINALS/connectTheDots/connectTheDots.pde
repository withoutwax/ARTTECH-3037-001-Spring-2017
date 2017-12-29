ArrayList<Dots> nodes;
int distance = 100;
int screenSize;
int numberOfDots = 50;
float maxSpeed = 10;



void setup() {
  fullScreen();
  //pointList = new ArrayList<PVector>();
  frameRate(30);
  nodes = new ArrayList<Dots>();
  
  for (int i = 0; i < numberOfDots; i++) {
    nodes.add(new Dots(random(width), random(height), random(maxSpeed), random(-1,1), random(-1,1)));
  }

}


void draw() {
  background(255);
  text(frameRate, 10, 10);
  
  for (int i = 0; i <numberOfDots; i++) {
    nodes.get(i).drift();
  }
  for (int j = 0; j < numberOfDots; j++) {
    nodes.get(j).display();
  }

}

void keyPressed() {
  if (key == ' ') {
    
  }
}

void mousePressed() {
  //pointList.add(new PVector(mouseX, mouseY));
}