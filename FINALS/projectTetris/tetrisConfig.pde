class Tetris {
  Shapes tetrisShapes;


  PVector shapeLoc = new PVector(15, 0);
  //int noOfShapes = 0;

  float shapeSelection = random(1);
  int shapeSelectionRandom = round(shapeSelection);

  float xDir = 0;
  float yDir = 1;

  ArrayList<PVector> shapes = new ArrayList<PVector>();
  ArrayList<PVector> pile = new ArrayList<PVector>();


  void render() {
    fill(0, 0, 0);

    shapes.add(new PVector((shapeLoc.x)*scl, (shapeLoc.y)*scl));
    //rect(shapes.get(currentShape).x, shapes.get(currentShape).y, scl, scl);

    tetrisShapes = new Shapes(tetris.shapes.get(currentShape).x, tetris.shapes.get(currentShape).y);


    if (shapeSelectionRandom == 0) {
      tetrisShapes.squares();
    } else if (shapeSelectionRandom == 1) {
      tetrisShapes.lines();
    } else if (shapeSelectionRandom == 2) {
      tetrisShapes.s();
    } else if (shapeSelectionRandom == 3) {
      tetrisShapes.sInverted();
    } else if (shapeSelectionRandom == 4) {
      tetrisShapes.giuk();
    } else if (shapeSelectionRandom == 5) {
      tetrisShapes.niun();
    } else if (shapeSelectionRandom == 6) {
      tetrisShapes.badWord();
    }

  }



  void update() {

    shapes.get(currentShape).y = shapes.get(currentShape).y + (shapeSpeed * yDir*scl);
    shapes.get(currentShape).x = shapes.get(currentShape).x + (shapeSpeed * xDir*scl);

    shapes.get(currentShape).y = constrain(shapes.get(currentShape).y, 0, (boardHeight)); 
    shapes.get(currentShape).x = constrain(shapes.get(currentShape).x, 8*scl, 22*scl);




    if (shapes.get(currentShape).y > 0) {
      boolean hit = false;
      
      for (int i = 0; i < tetrisShapes.fallingShapes.size(); i++){       //for each box in the game board
        if (tetrisShapes.fallingShapes.get(i).y == (boardHeight-(1*scl))) {
          hit = true;
            
          pile.add(new PVector(tetrisShapes.fallingShapes.get(i).x, tetrisShapes.fallingShapes.get(i).y));
            
        } 
      }
      
      
      if (pile.size() > 1) {
      
      for (int i = 0; i < tetrisShapes.fallingShapes.size(); i++) {
        if (tetrisShapes.fallingShapes.get(i).x == pile.get(i).x && tetrisShapes.fallingShapes.get(i).y == (pile.get(i).y-(1*scl))) {
        hit = true;
          pile.add(new PVector(tetrisShapes.fallingShapes.get(i).x, tetrisShapes.fallingShapes.get(i).y));
            
        }
      }
      }
      
      
      //for (int i = 0; i < tetrisShapes.fallingShapes.size(); i++){
      //  for (int j = 0; j < pile.size(); j++) {
      //    if (tetrisShapes.fallingShapes.get(i).x == pile.get(j).x && tetrisShapes.fallingShapes.get(i).y == pile.get(j).y) {
      //      hit = true;
            
      //      pile.add(new PVector(tetrisShapes.fallingShapes.get(i).x, tetrisShapes.fallingShapes.get(i).y));
 
      //    }
          
      //  }
        
      //}
      
      
      if (hit) {
        //loop over all 4 blocks:
        for (int i = 0; i < tetrisShapes.fallingShapes.size(); i++) {
          pile.add(new PVector(tetrisShapes.fallingShapes.get(i).x, tetrisShapes.fallingShapes.get(i).y));
          
        }

        currentShape++;
        shapeSelection = random(1);
        shapeSelectionRandom = round(shapeSelection);
      }
    }
    





    //if (shapes.get(currentShape).y == boardHeight-(1*scl)) {

    //  pile.add(new PVector(shapes.get(currentShape).x, shapes.get(currentShape).y));

    //  //for (int i = 0; i < tetrisShapes.squaress.size(); i++) {
    //  //pile.add(new PVector(tetrisShapes.squaress.get(i).x, tetrisShapes.squaress.get(i).y));
    //  //}

    //  currentShape++;
    //  shapeSelection = random(6);
    //  shapeSelectionRandom = round(shapeSelection);
    //}


     //for (int i = 0; i < pile.size(); i++) {
     //   if (shapes.get(currentShape).x == pile.get(i).x && shapes.get(currentShape).y == (pile.get(i).y-scl)) {
     //   pile.add(new PVector(shapes.get(currentShape).x, shapes.get(currentShape).y));

     //   currentShape++;
     //   shapeSelection = random(1);
     //   shapeSelectionRandom = round(shapeSelection);
     //   }
     // }





    for (int i = 0; i < pile.size(); i++) {
      rect(pile.get(i).x, pile.get(i).y, scl, scl);
    }
}
}
  
  