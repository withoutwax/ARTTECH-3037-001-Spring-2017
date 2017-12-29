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

public class natureStudy extends PApplet {

//implemented code: 2D diffusion-limited aggregation
// (c) Alasdair Turner 2009

ArrayList<Nature> cellList;


int white = color(255);
int gray = color(128);

float system_radius = 2.0f;

public void setup() {
  
  background(64);

  cellList = new ArrayList<Nature>();
  
}


public void draw() {
  strokeWeight(0.5f);
  
  for (int i = 0; i < cellList.size(); i++) {

  float theta = random(0,TWO_PI);
  PVector ploc = new PVector(cos(theta)*system_radius,sin(theta)*system_radius);
  float phi = random(-atan(0.5f),atan(0.5f));
  PVector pdir = new PVector(cos(theta-PI+phi),sin(theta-PI+phi));
  boolean hit = false;
  
  while (!hit && ploc.mag() <= system_radius) {
    ploc.add(pdir);
    if (myget(ploc) == gray) {
      seed(ploc);
      hit = true;
    }  
    }
  //cellList.get(i).seed();
  //cellList.get(i).growth();
  }

}




public void keyPressed() {
  //if (key == ' ') {
  //  cellList.clear();
  //  background(64);
  //  //myset(new PVector(0,0));
  //  system_radius = 2.0;
  //}
}

public void mousePressed() {
  cellList.add(new Nature(new PVector(mouseX, mouseY)));
  
  //system_radius = 2.0;
}
class Nature {
  PVector loc;
  
  Nature(PVector position) {
    loc = position;
    seed(new PVector(loc.x, loc.y));
  }
}
  
  
//Initializing point position
public void seed(PVector pos) {  
  int x = PApplet.parseInt(pos.x);
  int y = PApplet.parseInt(pos.y);
    for (int i = x - 1; i <= x + 1; i++) {
      for (int j = y - 1; j <= y + 1; j++) {
        if (get(i, j) != white) {
          set(i, j, gray);
        }
      }
    }
  //White Point(The place where it all begins)
  set(x, y, white);
  float m = pos.mag();
  if (m * 2.0f >= system_radius) {
    system_radius = m * 2.0f;
  }
}


  
public int myget(PVector colorPosition) {
  return get(PApplet.parseInt(colorPosition.x), PApplet.parseInt(colorPosition.y));  
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "natureStudy" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
