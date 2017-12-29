class Snake {
  PVector snakeLoc = new PVector(floor(random(width)), floor(random(height)));
  
  float xDir = 1;
  float yDir = 0;
  int total = 0;
  
  ArrayList<PVector> body = new ArrayList<PVector>();

  
  void render() {
    fill(0, 0, 0);
    ellipse(snakeLoc.x, snakeLoc.y, scl, scl);
    
    for (int i = 0; i < body.size(); i++) {
      ellipse(body.get(i).x, body.get(i).y, 15, 15);
    }
    
  }
  
  boolean eat() {
    float d = dist(snakeLoc.x, snakeLoc.y, food.x, food.y);
    if (d < (scl)) {
      total++;
      return true;
    } else {
      return false;
    }
  }
  
  
  void death() {
    for (int i = 0; i < body.size(); i++) {
      PVector pos = body.get(i);
      float d = dist(snakeLoc.x, snakeLoc.y, pos.x, pos.y);
      if (d < 1) {
        fill(255, 0, 0);
        textSize(30);
        textAlign(CENTER);
        text("GAME OVER", width/2, height/2);
        textAlign(CENTER, TOP);
        text("Press 'r' to RESTART", width/2, height/2);
        body.clear();
        noLoop();
        
      }
    }
    
  }

  
  void update() {
    if (total > 0) {
      if (total == body.size()) {
        body.remove(0);
      }
      body.add(new PVector(snakeLoc.x, snakeLoc.y));
    } 
    
    snakeLoc.x = snakeLoc.x + (snakeSpeed * xDir);
    snakeLoc.y = snakeLoc.y + (snakeSpeed * yDir);
    
    snakeLoc.x = constrain(snakeLoc.x, 0+scl/2, width-scl/2);
    snakeLoc.y = constrain(snakeLoc.y, 0+scl/2, height-scl/2); 

  }
}