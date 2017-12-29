Snake snake;

int scl = 20;
int snakeSpeed = 2;
int score = 0;
int highScore = 0;
PVector food = new PVector(floor(random(width)), floor(random(height)));


void setup() {
  size(600, 600);
  snake = new Snake();
  
}


void draw() {
  background(255, 255, 255);
  fill(50);
  textSize(12);
  textAlign(LEFT);
  text("SCORE: ", 10, 20);
  text(score, 55, 20);
  text("HIGH SCORE: ", 10, 35);
  text(highScore, 85, 35);
  text("CONTROLS: ", 10, 50);
  text("PAUSE: P", 10, 75);
  text("PLAY: O", 10, 90);
  
  snake.update();
  snake.render();
  snake.death();
  
  foodLocation();
}


void foodLocation() {
  noStroke();
  fill(229, 224, 201);
  
  ellipse(food.x, food.y, scl, scl);
  
  if (snake.eat() == true) {
    score ++;
    food.x = floor(random(width));
    food.y = floor(random(height));
  }
  
}


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      snake.xDir = 0;
      snake.yDir = -1;
    } else if (keyCode == DOWN) {
      snake.xDir = 0;
      snake.yDir = 1;     
    } else if (keyCode == LEFT) {
      snake.xDir = -1;
      snake.yDir = 0;
    } else if (keyCode == RIGHT) {
      snake.xDir = 1;
      snake.yDir = 0;
    }
  }
  //RESTART
  if (key == 'r') {
    setup();
    loop();
    score = 0;
  } else if (key == 'p') {
    noLoop();
  } else if (key == 'o') {
    loop();
  }
}