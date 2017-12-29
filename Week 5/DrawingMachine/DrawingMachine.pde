Circle c;
Rectangle r;
Shape s;

void setup() {
  size(500, 500);
  c = new Circle();
  c.radius = 100;
  c.pos.x = 200;
  c.pos.y = 150;
  
  r = new Rectangle();
  r.w = 100;
  r.h = 50;
  r.pos.x = 300;
  r.pos.y = 400;
  
  s = new Circle();
  
}

void draw() {
  //ellipse(c.pos.x, c.pos.y, c.radius*2, c.radius*2);
  c.render();
  r.render();
  
  s.pos.x = 100;
  s.pos.y = 50;
  s.render();
}