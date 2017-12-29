class Nature {
  PVector loc;
  
  Nature(PVector position) {
    loc = position;
    seed(new PVector(loc.x, loc.y));
  }
}
  
  
//Initializing point position
void seed(PVector pos) {  
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
  float m = pos.mag();
  if (m * 2.0 >= system_radius) {
    system_radius = m * 2.0;
  }
}


  
color myget(PVector colorPosition) {
  return get(int(colorPosition.x), int(colorPosition.y));  
}