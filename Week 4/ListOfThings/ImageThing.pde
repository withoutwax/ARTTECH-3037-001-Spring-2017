class ImageThing {
  // Class is like an Template
  //PVector position;
  //PImage, etc.. references are also class
  float x;
  float y;
  PImage myImg;
  
  float angle;
  
  //This is like the setup function of the class - Rules
  ImageThing(float xPos, float yPos, PImage theImage) {
    x = xPos;
    y = yPos;
    myImg = theImage;;
  }
  
  void spin() {
    angle += .1;
  }
  
  void render() {
    pushMatrix();
    translate(x, y);
    rotate(angle);
    image(myImg, 0, 0, 100, 100);
    popMatrix();
  }
  
}