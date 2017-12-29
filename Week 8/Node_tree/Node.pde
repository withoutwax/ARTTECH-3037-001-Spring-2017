class Node {
  //abstract tree properties
  Node parent; //note: set to null for a top level Node
  ArrayList<Node> children;
  
  //visual tree properties
  float angle;
  float length;
  float thickness;
  color c;
  
  Node(Node p) { // each node will store their own indicidual information
    parent = p;
    children = new ArrayList<Node>();
    
    angle = 0;
    length = 100;
    thickness = 2;
    c = color(255, 255, 0);
  }
  
  void render() {
    //set drawing properties
    strokeWeight(thickness);
    stroke(c);
    rotate(radians(angle));//draw the line
    ellipse(0, 0, 10, 10); // for visual aid, draw root of branch as a circles
    line(0, 0, 0, -length);//go to the end fo this/branch
    translate(0, -length);//go to the end of this line/branch
    //draw children
    
    for (Node n : children) {
      n.render();
    }
  
  translate(0, length);//untranslate
  rotate(radians(-angle));//unrotate
  }
  
}