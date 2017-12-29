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

public class connectTheDots extends PApplet {

ArrayList<Dots> nodes;
int distance = 100;
int screenSize;
int numberOfDots = 50;
float maxSpeed = .5f;



public void setup() {
  
  //pointList = new ArrayList<PVector>();
  frameRate(30);
  nodes = new ArrayList<Dots>();
  
  for (int i = 0; i < numberOfDots; i++) {
    nodes.add(new Dots(random(width), random(height), random(maxSpeed), random(-1,1), random(-1,1)));
  }

}


public void draw() {
  background(255);
  
  for (int i = 0; i <numberOfDots; i++) {
    nodes.get(i).drift();
    nodes.get(i).display();
  }
 
  /*
  PVector temp;
  for (int i = 0; i < pointList.size(); i++) {
    temp = pointList.get(i);
    
    strokeWeight(4);
    point(temp.x, temp.y);
    
    for (int j = 0; j < pointList.size(); j++) {
      
      if (j != i) {
        line(pointList.get(i).x, pointList.get(i).y, pointList.get(j).x, pointList.get(j).y);
      }
    }
  }
  */
}

public void keyPressed() {
  if (key == ' ') {
    
  }
}

public void mousePressed() {
  //pointList.add(new PVector(mouseX, mouseY));
}
class Dots {
  
  float xpos;
  float ypos;
  float speed;
  float rise;
  float run;
  
  Dots(float xpos_, float ypos_, float speed_, float rise_, float run_) {
    xpos = xpos_;
    ypos = ypos_;
    speed = speed_;
    run = run_;
    rise = rise_;
  }
  
  public void display() {
    noStroke();
    fill(0,0,0,30);
    ellipse(xpos, ypos, 10, 10);
    
    //connecting the lines
    for (int i = 0; i < numberOfDots-1; i++) {
      for (int j = i + 1; j < numberOfDots; j++) {
        float d = dist(nodes.get(i).xpos, nodes.get(i).ypos, nodes.get(j).xpos, nodes.get(j).ypos);
        if (d < distance) {
          float strokeWeight = (sqrt((sq(abs(nodes.get(i).xpos-nodes.get(j).xpos)))+(sq(abs(nodes.get(i).ypos-nodes.get(j).ypos)))));
          stroke(0, distance - strokeWeight);
          line(nodes.get(i).xpos, nodes.get(i).ypos, nodes.get(j).xpos, nodes.get(j).ypos);
        }
      }
    }   
  }
  
  public void drift() {
    xpos = xpos + (speed * run);
    ypos = ypos + (speed * rise);
    
    if (xpos < 0) {
      run *= -1;
    } else if (xpos > width) {
      run *= -1;
    } else if (ypos < 0) {
      rise *= -1;
    } else if (ypos > height) {
      rise *= -1;
    }
  }
}
  
  
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "connectTheDots" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
