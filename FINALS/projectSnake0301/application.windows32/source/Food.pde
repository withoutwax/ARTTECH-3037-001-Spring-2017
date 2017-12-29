class Food {
  PVector food = new PVector((floor(random(b.boardWidth))), (floor(random(b.boardHeight))));
  PVector poison = new PVector((floor(random(b.boardWidth))), (floor(random(b.boardHeight))));
  
  
  void render() {
    stroke(theme.foodStroke);
    fill(theme.food); //HEX# F77F7F
    rect(food.x*scl, food.y*scl, scl, scl);
    
    if (level > 0) {
      stroke(theme.poisonStroke);
      fill(theme.poison); //HEX# 575F68
      rect(poison.x*scl, poison.y*scl, scl, scl);
    }
    
    
  }
  
  void foodLocation() {

    if (snake.eat() == true) {
      score ++;
      b.currentScore++;
      
      food.x = (floor(random(b.boardHeight)));
      food.y = (floor(random(b.boardWidth)));
    }
    
    food.x = constrain(food.x, 0, b.boardHeight-1);
    food.y = constrain(food.y, 0, b.boardWidth-1); 
    
  }
  

}