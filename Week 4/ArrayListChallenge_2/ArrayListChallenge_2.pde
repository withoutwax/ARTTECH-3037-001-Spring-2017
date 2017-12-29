ArrayList<PVector> pointList;

void setup() {
  size(600, 600);
  pointList = new ArrayList<PVector>();

}


void draw() {
  background(200);
  
  for (int i = 1; i < pointList.size(); i++) {
      line(pointList.get(i).x, pointList.get(i).y, pointList.get(i-1).x, pointList.get(i-1).y);
    }
    if (pointList.size() > 1) {
      line(pointList.get(0).x, pointList.get(0).y, pointList.get(pointList.size()-1).x, pointList.get(pointList.size()-1).y);
    }
    
    
  }
  


void keyPressed() {
  if (key == ' ') {
    pointList.clear();
  }
}

void mousePressed() {
  pointList.add(new PVector(mouseX, mouseY));
  strokeWeight(2);
  point(mouseX, mouseY);
}