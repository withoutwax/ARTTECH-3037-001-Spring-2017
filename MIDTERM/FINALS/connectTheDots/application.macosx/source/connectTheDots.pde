ArrayList<Dots> nodes;
int distance = 100;
int screenSize;
int numberOfDots = 50;
float maxSpeed = .5;



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
  
  for (int i = 0; i <numberOfDots; i++) {
    nodes.get(i).drift();
    nodes.get(i).display();
  }
 
  /*
  PVector temp;
  for (int i = 0; i < pointList.size(); i++) {
    temp = pointList.get(i);
    
    strokeWeight(4);
    point(temp.x, temp.y);
    
    for (int j = 0; j < pointList.size(); j++) {
      
      if (j != i) {
        line(pointList.get(i).x, pointList.get(i).y, pointList.get(j).x, pointList.get(j).y);
      }
    }
  }
  */
}

void keyPressed() {
  if (key == ' ') {
    
  }
}

void mousePressed() {
  //pointList.add(new PVector(mouseX, mouseY));
}