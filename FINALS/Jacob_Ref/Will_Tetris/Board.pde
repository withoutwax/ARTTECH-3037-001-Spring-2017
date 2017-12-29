class Board {
  
  int width;
  int height;
  ArrayList<Block> blocks;

  Board(int w, int h) {
    blocks = new ArrayList<Block>();
    width = w;
    height = h;
  }

  void addBlock(int x, int y) {
    blocks.add(new Block(x, y));
  }


  void render() {
    fill(255);
    //draw aech block
    for (Block b : blocks) {
      rect(b.x * scale, b.y * scale, scale, scale); 
    }
  }
  
  
}