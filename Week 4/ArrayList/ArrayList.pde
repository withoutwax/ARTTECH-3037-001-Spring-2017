ArrayList<PVector> pointList;

void setup() {
  size(400, 400);
  //pos = new PVector(50, 200);
  
  pointList = new ArrayList<PVector>();
  pointList.add(new PVector(50, 200));
  println(pointList.size());
  
}

void draw() {
  background(200);
  //ellipse(pos.x, pos.y, 50, 50);
  //ellipse(pointList.get(0).x, pointList.get(0).y, 50, 50);
  
  fill(random(100, 200), 0, 0);
  
  PVector temp;
  
  for (int i =0; i < pointList.size(); i++) {
    temp = pointList.get(i);
    ellipse(temp.x, temp.y, 50, 50);
  }
}

void keyPressed() {
  if (key == 'c') {
    pointList.clear();
  }
}

void mousePressed() {
  
  
  //pos.x = mouseX;
  //pos.y = mouseY;
}

void mouseDragged() {
  
}