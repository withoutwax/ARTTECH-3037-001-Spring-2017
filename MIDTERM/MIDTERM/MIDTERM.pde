ArrayList<PVector> cellList;

void setup() {
  size(1000, 1000);

  //pos = new PVector(50, 200);

  cellList = new ArrayList<PVector>();
  //I could put 500 PVectors in here with random xy values
  //for (int i=0; i < 500; i++) {
  //  pointList.add(new PVector(random(width), random(height)));
  //}
  
  //println(pointList.size());
  
}

void draw() {
  background(200);
  
  //fill(random(100, 200), 0, 0);
  strokeWeight(2);
  
  PVector temp;
  for (int i=0; i < cellList.size(); i++) {
    temp = cellList.get(i);
    point(temp.x, temp.y);
  }
  
  //jiggle();
}

//void jiggle() {
//  PVector temp;
//  for (int i=0; i < cellList.size(); i++) {
//    temp = cellList.get(i);
//    temp.x += random(-1, 1);
//    temp.y += random(-1, 1);
//  }
  
//}


void keyPressed() {
  if (key == ' ') {
    cellList.clear(); 
  }
}

void mousePressed() {
  cellList.add(new PVector(mouseX, mouseY));
}

void mouseDragged() {
  cellList.add(new PVector(mouseX, mouseY));  
}