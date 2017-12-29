enum ShapeStyle {
  LINE, SQUARE, TEE, ESS, ESS_INV 
}

class Shape {
  ArrayList<Block> blocks;
  ShapeStyle style;
  int x, y; //where this shape's 0,0 should show up on the gameboard
  
  int rotation; //maybe?
  
  Shape(ShapeStyle s) {
    blocks = new ArrayList<Block>(4);
    createShape(s);
  }
  
  void createShape(ShapeStyle s) {
    blocks.clear();
    if (s == ShapeStyle.LINE) {
      blocks.add(new Block(0, -1));
      blocks.add(new Block(0, 0));
      blocks.add(new Block(0, 1));
      blocks.add(new Block(0, 2));
    }
  }
  
  void render() {
    fill(255, 0, 0);
    for (Block b : blocks) {
      rect((x+b.x) * scale, (y+b.y) * scale, scale, scale);
    }
  }
  
  //move this block's position by x and y
  void move(int xOffset, int yOffset) {
    //calculate a hypotehtical new posoition
    int testX = x + xOffset;
    int testY = y + yOffset;
    
    //now I want to run hit test of all this Shape's blocks against all the board's blocks, based on testX/Y
    //TODO
    
    //if hit test returns false, we can move there
    x += xOffset;
    y += yOffset;
    
  }
}