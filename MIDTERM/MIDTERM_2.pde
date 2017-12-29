//ArrayList<Shape> circleList;
//int numCircles = 10;
Shape circle;


void setup() {

  //circleList = new ArrayList<Shape>();
  //for (int i = 0; i < numCircles; i++) {
  //  Shape circle = new Circle();
  //  circle.add(circleList);
  //}
  size(500, 500);
  
  
  circle = new Circle();
  circle.position.x = 100;
  circle.position.y = 100;
  color c = color(255, 0);
  circle.fillColor = c;
  
}

void draw() {
   
  
  circle.render();
  //for (int i = 0; i < numCircles; i++) {
  //circle.x = 100;
  //}
}