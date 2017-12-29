class Shape {
  PVector pos;
  color fillColor;
  color strokeColor;
  
  Shape() {
   pos = new PVector(); 
  }
  void render() {
  }
}

class Rectangle extends Shape {
  float w, h;
  //PVector pos;
  //color fillColor;
    void render() {
    rect(c.pos.x, c.pos.y, w, h);
  }
  
}

class Circle extends Shape {
  float radius = 40;
  //PVector pos;
  
  void render() {
    ellipse(pos.x, pos.y, radius*2, radius*2);
  }
}

class Ellipse extends Shape{
  float w, h;
  //PVector pos;
  float orientation;
}

class Line extends Shape {
  
}