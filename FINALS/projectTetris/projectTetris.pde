Tetris tetris;


int scl = 20;
int shapeSpeed = 1;
int currentShape = 0;
int boardHeight = 30*scl;
int boardWidth = 14*scl;


void setup() {
  size(600, 600);
  tetris = new Tetris();
  
  frameRate(10);

}


void draw(){
  background(225, 25, 25);
  fill(255, 255, 255);
  rect(8*scl, 0, boardWidth, boardHeight);
  
  
  tetris.render();
  tetris.update();
  
  
  
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      
    } else if (keyCode == DOWN) {
      
    } else if (keyCode == LEFT) {
      tetris.shapes.get(currentShape).x -= (1*scl);
      ////for (int i = 0; i < tetris.pile.size(); i++) {
      ////  if (tetris.shapes.get(currentShape).x-scl == tetris.pile.get(i).x) {
      ////    tetris.shapes.get(currentShape).x -= 0;
      ////  } else {
      ////  }
      ////}
      //for (int i = 0; i < tetris.pile.size(); i++) {
      //  if (tetris.shapes.get(currentShape).x > tetris.pile.get(i).x && tetris.shapes.get(currentShape).y == (tetris.pile.get(i).y-scl)) {
        
      //  } else {
      //    tetris.shapes.get(currentShape).x -= 0;
      //  }
      //}
        
    } else if (keyCode == RIGHT) {
      tetris.shapes.get(currentShape).x += (1*scl);
    }
  }
  if (key == 'p') {
    noLoop();
  } else if (key == 'o') {
    loop();
  } else if (key == 'i') {
    redraw();
  }
}