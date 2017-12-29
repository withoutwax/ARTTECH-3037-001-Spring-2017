class GameBoard {
  
  ArrayList<Block> blocks;
  
  int boardWidth;
  int boardHeight;
  
  GameBoard(int w, int h) {
    blocks = new ArrayList<Block>();
    
    boardWidth = w;
    boardHeight = h;
  }
  
  void render() {
    fill(0, 0, 0);
    
    
    for (int i = 0; i < blocks.size(); i++) {
      rect(blocks.get(i).x*scl, blocks.get(i).y*scl, scl, scl);
    }
  }
  
  void addBlock(int x, int y) {
    blocks.add(new Block(x, y));
  }
  
  void levelBoard(int levels) {
    for (int i = boardHeight-levels; i < boardHeight; i++) {
      for (int j = 0; j < boardWidth; j++) {
        if (random(1) < .1) {
          addBlock(j, i);
        }
      }
    }
  }
}