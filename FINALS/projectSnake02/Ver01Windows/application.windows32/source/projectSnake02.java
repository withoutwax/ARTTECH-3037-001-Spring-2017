import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class projectSnake02 extends PApplet {

Snake snake;

int scl = 20;
int snakeSpeed = 1;
int score = 0;
int highScore = 0;
PVector food = new PVector((floor(random(width/scl)))*scl, (floor(random(height/scl)))*scl);


public void setup() {
  
  snake = new Snake();
  frameRate(5);
}


public void draw() {
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


public void foodLocation() {
  noStroke();
  fill(229, 224, 201);
  
  rect(food.x, food.y, scl, scl);
  
  if (snake.eat() == true) {
    score ++;
    food.x = (floor(random(width/scl)))*scl;
    food.y = (floor(random(height/scl)))*scl;
  }
  
  food.x = constrain(food.x, 0, width-scl);
  food.y = constrain(food.y, 0, height-scl); 
  
}


public void keyPressed() {
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
class Snake {
  PVector snakeLoc = new PVector((floor(random(width/scl)))*scl, (floor(random(height/scl)))*scl);
  
  float xDir = 1;
  float yDir = 0;
  int total = 0;
  
  ArrayList<PVector> body = new ArrayList<PVector>();

  
  public void render() {
    fill(0, 0, 0);
    rect(snakeLoc.x, snakeLoc.y, scl, scl);
    
    for (int i = 0; i < body.size(); i++) {
      rect(body.get(i).x, body.get(i).y, scl, scl);
    }
    
  }
  
  public boolean eat() {
    float d = dist(snakeLoc.x, snakeLoc.y, food.x, food.y);
    if (d < (scl)) {
      total++;
      return true;
    } else {
      return false;
    }
  }
  
  
  public void death() {
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

  
  public void update() {
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
  public void settings() {  size(600, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "projectSnake02" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
