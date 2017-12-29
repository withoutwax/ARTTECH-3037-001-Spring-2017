class Node {
  //abstract tree properties
  Node parent; //note: set to null for a top level Node
  ArrayList<Node> children;
  
  //visual tree properties
  float homeAngle;
  float currentAngle; //based on wind, children climbing, snow, etc
  float length;
  float thickness;
  color c;
  
  Node(Node p) {
    parent = p;
    children = new ArrayList<Node>();
    
    homeAngle = 0;
    length = 100;
    thickness = 2;
    c = color(255, 255, 0);
  }
  
  void setHomeAngle(float a) {
    homeAngle = a;
    currentAngle = homeAngle;
  }
  
  void render() {
    //set drawing properties
    strokeWeight(thickness);
    stroke(c);
    rotate(radians(currentAngle)); //rotate to branch angle
    //ellipse(0, 0, 10, 10); //for visual aid, draw root of branch as a circle
    line(0, 0, 0, -length); //draw the line
    translate(0, -length); //go to the end of this line/branch
    //draw children
    for (Node n : children) {
      n.render();
    }
    
    translate(0, length); //"untranslate"
    rotate(radians(-currentAngle)); //"unrotate"
  } //end render
  
  void wiggle() {
    length += random(-.25, .25);
    currentAngle += random(-.25, .25);
    //thickness = constrain(thickness + random(-.25, .25), 0.1, 5);
    
    for (Node n : children) {
      n.wiggle();
    }
  }
  
  void windRecursive(float strength) {
    //do the wind thing
    float flex = map(thickness, .001, 5, 20, 2);
    float angleChange = strength * flex; //TODO: set this based on thickness
    currentAngle = homeAngle + angleChange;
    
    //tell the children
    for (Node n : children) {
      n.windRecursive(strength);
    }
  }
  
}