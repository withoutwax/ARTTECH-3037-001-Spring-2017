Board b;
Snake snake;
Food f;

int scl = 20;
int snakeSpeed = 1;
int score = 0;
int highScore = 0;
PVector food;


void setup() {
  size(800, 800);
  b = new Board(30, 30);
  snake = new Snake();
  food = new PVector((floor(random(b.boardWidth))), (floor(random(b.boardHeight))));
  foodLocation();
  frameRate(5);
  
  
}


void draw() {
  background(255, 255, 255);
  scoreBoard();
  
  b.render();
  
  snake.update();
  snake.render();
  snake.death();
  
  foodLocation();
}


void foodLocation() {
  noStroke();
  fill(229, 224, 201);
  
  rect(food.x*scl, food.y*scl, scl, scl);
  
  if (snake.eat() == true) {
    score ++;
    food.x = (floor(random(b.boardHeight)));
    food.y = (floor(random(b.boardWidth)));
  }
  
  food.x = constrain(food.x, 0, b.boardHeight-1);
  food.y = constrain(food.y, 0, b.boardWidth-1); 
  
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

void scoreBoard() {
  int textLocx = (b.boardWidth+1)*scl;
  int textLocy = 20;
  
  fill(0);
  stroke(0);
  textSize(12);
  textAlign(LEFT);
  text("SCORE: ", textLocx, textLocy);
  text(score, textLocx+45, textLocy);
  text("HIGH SCORE: ", textLocx, textLocy+15);
  text(highScore, textLocx+75, textLocy+15);
  text("CONTROLS: ", textLocx, textLocy+30);
  text("PAUSE: P", textLocx, textLocy+55);
  text("PLAY: O", textLocx, textLocy+70);
}