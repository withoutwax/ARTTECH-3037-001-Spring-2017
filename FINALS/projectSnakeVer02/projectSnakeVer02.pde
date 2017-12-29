Snake snake;

float ease = 0.05;
int scl = 20;

int snakeSpeed = 1;
int score = 0;

PVector food = new PVector(random(width), random(height));


void setup() {
  size(600, 600);
  snake = new Snake();
  
}


void draw() {
  background(255, 255, 255);
  text("SCORE: ", 10, 20);
  text(score, 55, 20);
  
  snake.render();
  snake.update();
  
  foodLocation();
}


void foodLocation() {
  noStroke();
  fill(229, 224, 201);
  
  rect(food.x, food.y, scl, scl);
  //stroke(0);
  //noFill();
  //ellipse(food.x, food.y, 30, 30);
  
  if (snake.eat() == true) {
    score ++;
    food.x = random(width);
    food.y = random(height);
  }
  
}