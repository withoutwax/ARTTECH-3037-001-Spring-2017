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

public class lineIntersection extends PApplet {

//ArrayList<Lines> horLines;
//ArrayList<Lines> verLines;
ArrayList<Lines> lines;

int numberOfLines = 12;
int speed = 3;

PVector vVel;
PVector hVel;


public void setup() {
  
  stroke(125, 50);

   //horLines = new ArrayList <Lines>();
   //verLines = new ArrayList <Lines>();
   lines = new ArrayList <Lines>();
   
   
   for (int i = 0; i < numberOfLines; i++) {
     //horLines.add(new Lines(new PVector(0, random(height)), new PVector(width, random(height))));
     //verLines.add(new Lines(new PVector(random(width), 0), new PVector(random(width), height)));
     
     if (random(0, 1) < 0.5f) {
       lines.add(new Lines(new PVector(0, random(height)), new PVector(width, random(height))));
     } else {
       lines.add(new Lines(new PVector(random(width), 0), new PVector(random(width), height)));
     }
      
   }
   
}




public void draw() {
  background(255);
  
 // println
  for (int i = 0; i < numberOfLines; i++) {
    //horLines.get(i).display();
    //verLines.get(i).display();
    lines.get(i).display();
    
    //horLines.get(i).drift();
    //verLines.get(i).drift();
    lines.get(i).drift();
     
}
}


  
  
public void keyPressed() {
  if (key == ' ') {

  }
}
class Lines {
  
  PVector start;
  PVector end;
  PVector loc;
  
  float startRise = random(-1, 1);
  float endRise = random(-1, 1);
  float startRun = random(-1, 1);
  float endRun = random(-1, 1);

  
  
  Lines(PVector startLocation, PVector endLocation) {
    start = startLocation;
    end = endLocation;
    
  }
  


  public void display() {
    
    for (int i = 0; i < numberOfLines; i++) {
      Lines h = (Lines) lines.get(i);
      for (int j = 0; j < numberOfLines; j++) {
        Lines v = (Lines) lines.get(j);
        
        fill(0, 150, 255);
        if (h.cIntersect(v) != null) {
          ellipse(h.cIntersect(v).x, h.cIntersect(v).y, 3, 3);
        }
      }
    }
    line(start.x, start.y, end.x, end.y);
  }
  
  
    /* Code used from Jerome Herr's sketch "intersect" */
  public PVector cIntersect(Lines c1) {
    float a = end.y - start.y;
    float b = start.x - end.x;
    float c = a * start.x + b * start.y;

    float a2 = c1.end.y - c1.start.y;
    float b2 = c1.start.x - c1.end.x;
    float c2 = a2 * c1.start.x + b2 * c1.start.y;

    float den = a * b2 - a2 * b;
    float x = (b2 * c - b * c2) / den;
    float y = (a * c2 - a2 * c) / den;
    
    if (den == 0) return null; 
    //IMPORTANT - RETURNING THE PVECTOR
    return loc = new PVector(x, y);
  }
  
  //PVector cIntersect(PVector p0, PVector p1, PVector p2, PVector p3) {
  //  float A1, B1, C1, A2, B2, C2, denominator;
  //  A1= p1.y-p0.y;
  //  B1 = p0.x - p1.x;
  //  C1 = A1 * p0.x + B1 * p0.y; 
  //  A2 = p3.y - p2.y;
  //  B2 = p2.x - p3.x; 
  //  C2 = A2 * p2.x + B2 * p2.y; 
  //  denominator = A1 * B2 - A2 * B1;
  //  float x =  (B2 * C1 - B1 * C2) / denominator;
  //  float y =  (A1 * C2 - A2 * C1) / denominator;
  //  //IMPORTANT - RETURNING THE PVECTOR
  //  return loc = new PVector(x, y);
  //

  
  

  public void drift() {
    
    
    if ((start.x == 0) && (end.x == width)) {
    start.y = start.y + (speed * startRise);
    end.y = end.y + (speed * endRise);
    
      if(start.y < 0) {
        startRise *= -1;
      } else if (end.y < 0) {
        endRise *= -1;
      } else if (start.y > height) {
        startRise *= -1;
      } else if (end.y > height) {
        endRise *= -1;
      }
    
    } else if ((start.y == 0) && (end.y == height)) {
      start.x = start.x + (speed * startRun);
      end.x = end.x + (speed * endRun);
      
        if(start.x < 0) {
          startRun *= -1;
        } else if (end.x < 0) {
          endRun *= -1;
        } else if (start.x > width) {
          startRun *= -1;
        } else if (end.x > width) {
          endRun *= -1;
        }
    }
  }
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "lineIntersection" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
