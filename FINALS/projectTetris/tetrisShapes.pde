class Shapes {
  
  ArrayList<PVector> fallingShapes = new ArrayList<PVector>();

  float x;
  float y;

  Shapes(float xPos, float yPos) {
    x = xPos;
    y = yPos;
    

  }

  
  
  //PVector[] squares = new PVector[4];
  //squares[0] = (x, y);
  //squares[1] = ((x+scl), y);
  //squares[2] = (x, (y+scl));
  //squares[3] = ((x+scl), (y+scl));
  
  
  
  



  void squares() {
    
     fallingShapes.add(new PVector(x, y));
     fallingShapes.add(new PVector((x+(1*scl)), y));
     fallingShapes.add(new PVector(x, (y+(1*scl))));
     fallingShapes.add(new PVector((x+(1*scl)), (y+(1*scl))));
    
    for (int i=0; i < fallingShapes.size(); i++) {
      rect(fallingShapes.get(i).x, fallingShapes.get(i).y, scl, scl);
    }
  }


  void lines() {
    //rect(x, y, scl, scl);
    //rect(x, y+scl, scl, scl);
    //rect(x, y+(2*scl), scl, scl);
    //rect(x, y+(3*scl), scl, scl);
    
    fallingShapes.add(new PVector(x, y));
    fallingShapes.add(new PVector(x, y+(1*scl)));
    fallingShapes.add(new PVector(x, (y+(2*scl))));
    fallingShapes.add(new PVector(x, (y+(3*scl))));
    
    for (int i=0; i < fallingShapes.size(); i++) {
      rect(fallingShapes.get(i).x, fallingShapes.get(i).y, scl, scl);
    }
    
  }

  void s() {
    rect(x, y, scl, scl);
    rect(x+scl, y, scl, scl);
    rect(x, y+scl, scl, scl);
    rect(x-scl, y+scl, scl, scl);
  }

  void sInverted() {
    rect(x, y, scl, scl);
    rect(x-scl, y, scl, scl);
    rect(x, y+scl, scl, scl);
    rect(x+scl, y+scl, scl, scl);
  }

  void giuk() {
    rect(x, y, scl, scl);
    rect(x, y+scl, scl, scl);
    rect(x-scl, y+scl, scl, scl);
    rect(x-(2*scl), y+scl, scl, scl);
  }

  void niun() {
    rect(x, y, scl, scl);
    rect(x, y+scl, scl, scl);
    rect(x+scl, y+scl, scl, scl);
    rect(x+(2*scl), y+scl, scl, scl);
  }

  void badWord() {
    rect(x, y, scl, scl);
    rect(x, y+scl, scl, scl);
    rect(x+scl, y+scl, scl, scl);
    rect(x-scl, y+scl, scl, scl);
  }
}