/*
class Thing {
  // Class is like an Template
  //PVector position;
  //PImage, etc.. references are also class
  float x;
  float y;
  float size;
  
  void render() {
    rect(x, y, size, size);
  }
  
}
*/


Thing myThing;
Thing thing2;
ImageThing myImageThing;

void setup() {
  size(400, 400);
 
  myThing = new Thing(100, 200, 100);
  thing2 = new Thing(250, 150, 234);
  myImageThing = new ImageThing(30, 60, loadImage("retroBG.png"));

  rectMode(CENTER);
  frameRate(15);
  /*
  myThing = new Thing();
  myThing.x = 100;
  myThing.y = 200;
  myThing.size = 100;
  
  thing2 = new Thing();
  thing2.x = 250;
  thing2.y = 150;
  thing2.size = 234;
  */
}


void draw() {
  background(200);
  //ellipse(myThing.x, myThing.y, myThing.size, myThing.size);
  //myThing.render();
  thing2.render();
  thing2.spin();
  myImageThing.render();
  myImageThing.spin();
  
}