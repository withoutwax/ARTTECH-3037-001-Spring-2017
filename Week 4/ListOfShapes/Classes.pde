/**
Class Shape 
  render()
  addPoint(float x, float y)
  addPoint(Point p)
*/

class Point {
  float x, y;
}

class Shape {
  ArrayList<Point> pointList;
  
  //constructor is a setup function for the object.
  Shape() {
    pointList = new ArrayList<Point>();
  }
  
  //renders the shape to the screen
  void render() {
    fill(255, 0, 0);
    ellipse(width/2, height/2, 50, 50);
    
    for (int i = 0; i < pointList.size(); i++) {
      Point thisPoint = pointList.get(i);
      ellipse(thisPoint.x, thisPoint.y, 5, 5);
    }
  }
  
  
  void addPoint(float newX, float newY) {
    Point newPoint = new Point();
    newPoint.x = newX;
    newPoint.y = newY;
    pointList.add(newPoint);
  }
  
  
  void addPoint(Point p) {
    pointList.add(p);
  }
  
}