class Thing {
  // Class is like an Template
  //PVector position;
  //PImage, etc.. references are also class
  float x;
  float y;
  float size;
  
  float angle;
  
  //This is like the setup function of the class - Rules
  Thing(float xPos, float yPos, float mySize) {
    x = xPos;
    y = yPos;
    size = mySize;
  }
  
  void spin() {
    angle += .1;
  }
  
  void render() {
    pushMatrix();
    translate(x, y);
    rotate(angle);
    rect(0, 0, size, size);
    popMatrix();
  }
  
}