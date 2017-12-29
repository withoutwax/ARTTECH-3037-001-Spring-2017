ArrayList<PVector> pointList;

void setup() {
  size(600, 600);
  pointList = new ArrayList<PVector>();

}


void draw() {
  background(200);
  
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
  
}

void keyPressed() {
  if (key == ' ') {
    pointList.clear();
  }
}

void mousePressed() {
  pointList.add(new PVector(mouseX, mouseY));
}