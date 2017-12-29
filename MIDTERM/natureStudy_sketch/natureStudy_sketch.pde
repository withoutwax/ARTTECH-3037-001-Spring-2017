ArrayList<PVector> cellList;

int num = 100;
Leaves[] myLeaves = new Leaves [num];

int particleCount = 20000;
Particle[] particles = new Particle[particleCount];
boolean[] field;





void setup() {
  fullScreen();
  background(255);

  cellList = new ArrayList<PVector>();

  for (int i = 0; i < myLeaves.length; i++) {
    myLeaves[i] = new Leaves();
  }
  
  field = new boolean[width * height];
  
  
  int fcenterX = width / 2;
  int fcenterY = height / 2;
  field[fcenterX + fcenterY * width] = true;

          // make particles
  for(int i=0; i<particleCount; i++) {
    particles[i] = new Particle();
  }


}





void draw() {

  //fill(random(100, 200), 0, 0);
  strokeWeight(1);
  
  PVector temp;
    for (int i=0; i < cellList.size(); i++) {
    temp = cellList.get(i);
  point(temp.x, temp.y);
  
  temp.x += random(-1, 1);
  temp.y += random(-1, 1);
  
  
  for (int j = 0; j < myLeaves.length; j++) {
    myLeaves[j].update();
    myLeaves[j].draw();
    
    
  }
  
    }
 
 
 
 
 
 
      loadPixels();
  for(int i=0; i<particleCount; i++) {
    particles[i].update();
    if (particles[i].stuck) {
      pixels[particles[i].y * width + particles[i].x] = color(0);
    }
  }
  updatePixels();
}











class Leaves {
    
  int a;
  int b;
  
  Leaves(){
  }
  
  void update() {
   a = a + int(random(-1.1, 1.1)); 
   b = b + int(random(-1.1, 1.1));
  }
  void draw() {
     point(a, b);
  }
  
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
    background(255);
  }
}

void mousePressed() {
  cellList.add(new PVector(mouseX, mouseY));
  


}