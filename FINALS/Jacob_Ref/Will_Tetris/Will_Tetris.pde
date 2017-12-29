Board b;
int scale = 20;
Shape curShape;


void setup() {
  b = new Board(14, 30);
  size(800, 800);
  randomizeBoard(6);
}


void draw() {
  background(255);
  translate(40, 20);
  fill(255);
  rect(0, 0, b.width * scale, b.height * scale);
  b.render();
  if (curShape != null) {
    curShape.render();
  }
}


void randomizeBoard(int numLevels) {
  for (int j=b.height - numLevels; j < b.height; j++) { 
    for (int i=0; i<b.width; i++) {
      if (random(1) < .1) {
        b.addBlock(i, j);
      }
    }
  }
}

void keyPressed() {
  if (key == 'n') {
    if (curShape == null) {
      curShape = new Shape(ShapeStyle.LINE);
    }
  }
}