//implemented code: 2D diffusion-limited aggregation
// (c) Alasdair Turner 2009

ArrayList<Nature> cellList;


color white = color(255);
color gray = color(128);

float system_radius = 2.0;

void setup() {
  fullScreen();
  background(64);

  cellList = new ArrayList<Nature>();
}


void draw() {
  strokeWeight(0.5);
  
  for (int i = 0; i < cellList.size(); i++) {

  //cellList.get(i).seed();
  cellList.get(i).growth();
  }

}




void keyPressed() {
  //if (key == ' ') {
  //  cellList.clear();
  //  background(64);
  //  //myset(new PVector(0,0));
  //  system_radius = 2.0;
  //}
}

void mousePressed() {
  cellList.add(new Nature(new PVector(mouseX, mouseY)));
  //system_radius = 2.0;
}