class Shape {
  PVector position;
  color fillColor;
  color strokeColor;
  
  Shape() {
   position = new PVector(); 
  }
  
  
  void render() {
    
  }
}




class Circle extends Shape {
  float radius = 40;
  //PVector pos;
//  color c = color(255, 204, 100);
  void render() {
    fill(fillColor);
    ellipse(position.x, position.y, radius*2, radius*2);
  }
}


class Line extends Shape {
  
}