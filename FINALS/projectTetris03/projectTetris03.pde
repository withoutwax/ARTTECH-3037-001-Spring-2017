GameBoard b;
Shapes s;

int scl = 20;
float speed = 0;
int currentShape = 0;
boolean floorHit = false;
boolean wallHitRight = false;
boolean wallHitLeft = false;

void setup() {
  size(800, 800);
  b = new GameBoard(14, 30);
  b.levelBoard(0);
  s = new Shapes(ShapeType.SQUARE);
  s.randomSelection();
  
}

void draw() {
  background (255, 255, 255);
  fill(255);
  translate(100, 40);
  rect(0, 0, b.boardWidth*scl, b.boardHeight*scl);
  
  b.render();
  if (s != null) {
    s.render();
    s.update();
  }
  
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      s.move(0, -1);
    } else if (keyCode == DOWN) {
      s.move(0, 1);
    } else if (keyCode == LEFT) {
      if (wallHitLeft) {
        s.move(0, 0);
      } else {
        s.move(-1, 0);
        wallHitRight = false;
      }
      
    } else if (keyCode == RIGHT) {
      if (wallHitRight) {
        s.move(0, 0);
      } else {
        s.move(1, 0); 
        wallHitLeft = false;
      }
    }
  }
  
  
  if (key == 'n') {

    if (s == null) {
      //s = new Shapes(ShapeType.SQUARE);
      
    }
  } else if (key == 'r') {
    for (int i = 0; i < s.blocks.size(); i++) {
      
    }
  }
}