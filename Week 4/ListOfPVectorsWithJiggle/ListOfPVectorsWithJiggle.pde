ArrayList<PVector> pointList; //<>//

void setup() {
  size(400, 400);

  //pos = new PVector(50, 200);

  pointList = new ArrayList<PVector>();
  //I could put 500 PVectors in here with random xy values
  //for (int i=0; i < 500; i++) {
  //  pointList.add(new PVector(random(width), random(height)));
  //}
  
  //println(pointList.size());
  
}

void draw() {
  background(200);
  
  fill(random(100, 200), 0, 0);
  
  PVector temp;
  for (int i=0; i < pointList.size(); i++) {
    temp = pointList.get(i);
    ellipse(temp.x, temp.y, 50, 50);
  }
  
  jiggle();
}

void jiggle() {
  PVector temp;
  for (int i=0; i < pointList.size(); i++) {
    temp = pointList.get(i);
    temp.x += random(-1, 1);
    temp.y += random(-1, 1);
  }
  
}


void keyPressed() {
  if (key == 'c') {
    pointList.clear(); 
  }
}

void mousePressed() {
  pointList.add(new PVector(mouseX, mouseY));
}

void mouseDragged() {
  pointList.add(new PVector(mouseX, mouseY));  
}