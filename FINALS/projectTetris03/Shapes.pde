enum ShapeType {
  SQUARE, LINE, S, SINVERTED, GIUK, NIUN, BADWORD;
}

class Shapes {
  ArrayList<Block> blocks;
  ShapeType type;
  //PVector shapeLoc = new PVector(b.boardWidth/2, 0);
  float shapeSelection = random(6);
  int shapeSelectionRandom = round(shapeSelection);
  
  int x = b.boardWidth/2;
  int y = 0;
  
  Shapes(ShapeType type) {
    blocks = new ArrayList<Block>(4);
    createShape(type);
  }

  
  void render() {
    fill(255, 0, 0);
    for (int i = 0; i < blocks.size(); i++) {
      rect(blocks.get(i).x*scl, blocks.get(i).y*scl, scl, scl);
    }
    //rect(x*scl, y*scl, scl, scl);
  }
  
  
  void update() {
    //for (Block u : blocks) {
    //  u.y += speed;
    //}
    
    //y += 1;
  }
  
  
  void move(int xOffset, int yOffset) {
    //int testX = x + xOffset;
    //int testY = y + yOffset;
    
    int testX;
    int testY;
    
    //x += xOffset;
    //y += yOffset;
    

    
    for (int i = 0; i < blocks.size(); i++) {
      testY = blocks.get(i).y + yOffset;
      testX = blocks.get(i).x + xOffset;
      
      //Floor Test==================
      
      for (int j = 0; j < b.blocks.size(); j++) {
        if (testY == b.blocks.get(j).y && blocks.get(i).x == b.blocks.get(j).x) {
          floorHit = true;
        }
      }
      if (testY == b.boardHeight) {
        floorHit = true;
      } else {
        blocks.get(i).y += yOffset;
      }
      //blocks.get(i).y += yOffset;
      
      
      
      //Wall Test==================
      if (testX == b.boardWidth) {
        wallHitRight = true;
      } else if (testX+1 == 0) {
        wallHitLeft = true;
      } else {
        blocks.get(i).x += xOffset;
      }
      
    }
    
    
    
    if (floorHit) {
      for (Block a : blocks) {
        addBoardBlock(a.x, a.y-1);
      }
      reset();
    } 
    //if (wallHitRight) {
    //  if (xOffset > 1) {
    //  xOffset = 0;
    //  }
    //} else if (wallHitLeft) {
    //  if (xOffset < 0) {
    //    xOffset = 0;
    //  }
    //}
    



    
    
    
    //for (Block j : blocks) {
    //  if (j.x == b.boardWidth-1) {
    //    xOffset = 0;
    //  } else {
    //    j.x += xOffset;
    //  }
    //}
    //for (int i = 0; i < blocks.size(); i++) {
    //  for (int j = 0; j < b.blocks.size(); j++) {
    //    if ((blocks.get(i).x+1) != b.blocks.get(j).x) {
    //      x += xOffset;
    //    } else if ((blocks.get(i).x-1) != b.blocks.get(j).x) {
    //      x += xOffset;
    //    }
    //  }
    //}
    
    //if (test) {
    //  x += xOffset;
    //}
  }
  
  
  void reset() {
    floorHit = false;
    //createShape(ShapeType.LINE);
    randomSelection();

  }
  void addBoardBlock(int boardxPos, int boardyPos) {
    b.addBlock(boardxPos, boardyPos);
  }
  
  void randomSelection() { 
    shapeSelection = random(6);
    shapeSelectionRandom = round(shapeSelection);
    
    if (shapeSelectionRandom == 0) {
      createShape(ShapeType.SQUARE);
    } else if (shapeSelectionRandom == 1) {
      createShape(ShapeType.LINE);
    } else if (shapeSelectionRandom == 2) {
      createShape(ShapeType.S);
    } else if (shapeSelectionRandom == 3) {
      createShape(ShapeType.SINVERTED);
    } else if (shapeSelectionRandom == 4) {
      createShape(ShapeType.GIUK);
    } else if (shapeSelectionRandom == 5) {
      createShape(ShapeType.NIUN);
    } else if (shapeSelectionRandom == 6) {
      createShape(ShapeType.BADWORD);
    } 
  }
  
  
  void createShape(ShapeType type) {
    blocks.clear();
    if (type == ShapeType.SQUARE) {
      blocks.add(new Block(x, y));
      blocks.add(new Block(x, y+1));
      blocks.add(new Block(x+1, y));
      blocks.add(new Block(x+ 1, y+1));
    } else if (type == ShapeType.LINE) {
      blocks.add(new Block(x, y));
      blocks.add(new Block(x, y+1));
      blocks.add(new Block(x, y+2));
      blocks.add(new Block(x, y+3));
    } else if (type == ShapeType.S) {
      blocks.add(new Block(x, y));
      blocks.add(new Block(x+1, y));
      blocks.add(new Block(x, y+1));
      blocks.add(new Block(x-1, y+1));
    } else if (type == ShapeType.SINVERTED) {
      blocks.add(new Block(x, y));
      blocks.add(new Block(x-1, y));
      blocks.add(new Block(x, y+1));
      blocks.add(new Block(x+1, y+1));
    } else if (type == ShapeType.GIUK) {
      blocks.add(new Block(x, y));
      blocks.add(new Block(x, y+1));
      blocks.add(new Block(x-1, y+1));
      blocks.add(new Block(x-2, y+1));
    } else if (type == ShapeType.NIUN) {
      blocks.add(new Block(x, y));
      blocks.add(new Block(x, y+1));
      blocks.add(new Block(x+1, y+1));
      blocks.add(new Block(x+2, y+1));
    } else if (type == ShapeType.BADWORD) {
      blocks.add(new Block(x, y));
      blocks.add(new Block(x, y+1));
      blocks.add(new Block(x+1, y+1));
      blocks.add(new Block(x-1, y+1));
    }
  }
  
  
}