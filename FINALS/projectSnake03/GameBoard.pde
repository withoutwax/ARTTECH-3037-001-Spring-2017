class Board {
  int boardWidth;
  int boardHeight;
  
  Board(int w, int h) {
    boardWidth = w;
    boardHeight = h;
  }
  
  void render() {
  stroke(0);
  noFill();
  rect(0, 0, b.boardWidth*scl, b.boardHeight*scl);
  }
}