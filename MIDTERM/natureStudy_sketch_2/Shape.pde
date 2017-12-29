class Nature {
  PVector loc;
  PVector theColor;
  
  Nature(PVector position) {
    loc = position;
  }
  
  
  //Initializing point position
  void seed(PVector pos) {
    loc = pos;
    int x = int(pos.x);
    int y = int(pos.y);
    for (int i = x - 1; i <= x + 1; i++) {
      for (int j = y - 1; j <= y + 1; j++) {
        if (get(i, j) != white) {
          set(i, j, gray);
        }
      }
    }
  //White Point(The place where it all begins)
  set(x, y, white);
  float m = loc.mag();
  if (m * 2.0 >= system_radius) {
    system_radius = m * 2.0;
    }
  }
  
  color myget(PVector colorPosition) {
    loc = colorPosition;
    return get(int(colorPosition.x), int(colorPosition.y));  
}
  
  void growth() {
  
  float theta = random(0,TWO_PI);
  PVector ploc = new PVector(cos(theta)*system_radius,sin(theta)*system_radius);
  float phi = random(-atan(0.5),atan(0.5));
  PVector pdir = new PVector(cos(theta-PI+phi),sin(theta-PI+phi));
  boolean hit = false;
  
  while (!hit && ploc.mag() <= system_radius) {
    ploc.add(pdir);
    if (myget(ploc) == color(64)) {
      seed(ploc);
      hit = true;
    }  

    }
  }
}