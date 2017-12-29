class Snake {
  PVector snakeLoc = new PVector(0, 0);
  
  
  void render() {
    fill(0, 0, 0);
    rect(snakeLoc.x, snakeLoc.y, scl, scl);
  }
  
  boolean eat() {
    float d = dist(snakeLoc.x, snakeLoc.y, food.x, food.y);
    if (d < scl) {
      return true;
    } else {
      return false;
    }
  }

  
  void update() {
    
    snakeLoc.x = snakeLoc.x + (mouseX - snakeLoc.x) * ease;
    snakeLoc.y = snakeLoc.y + (mouseY - snakeLoc.y) * ease;
    
    snakeLoc.x = constrain(snakeLoc.x, 0, width-scl);
    snakeLoc.y = constrain(snakeLoc.y, 0, height-scl);
    
    
    
  }
  
  
  
}