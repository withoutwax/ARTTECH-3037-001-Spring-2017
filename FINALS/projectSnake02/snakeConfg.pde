class Snake {
  PVector snakeLoc = new PVector((floor(random(width/scl)))*scl, (floor(random(height/scl)))*scl);
  
  float xDir = 1;
  float yDir = 0;
  int total = 0;
  
  ArrayList<PVector> body = new ArrayList<PVector>();

  
  void render() {
    fill(0, 0, 0);
    rect(snakeLoc.x, snakeLoc.y, scl, scl);
    
    for (int i = 0; i < body.size(); i++) {
      rect(body.get(i).x, body.get(i).y, scl, scl);
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
        
        if (score > highScore) {
          highScore = score;
        }
        
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
    
    snakeLoc.x = snakeLoc.x + (snakeSpeed * xDir*scl);
    snakeLoc.y = snakeLoc.y + (snakeSpeed * yDir*scl);
    
    snakeLoc.x = constrain(snakeLoc.x, 0, width-scl);
    snakeLoc.y = constrain(snakeLoc.y, 0, height-scl); 

  }
}