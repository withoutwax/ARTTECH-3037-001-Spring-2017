class Branches {
  
  float angle;
  float len;
  boolean showOrigin;
  int limit;
  int branches;
  int thickness;
  
  Branches(float angle_, float len_, boolean showOrigin_, int limit_, int branches_, int thickness_) {
    angle = angle_;
    len = len_;
    showOrigin = showOrigin_;
    limit = limit_;
    branches = branches_;
    thickness = thickness_;
  }

  void drawBranch() {
    strokeWeight(thickness);
    stroke(0);
    
    rotate(45);
    line(0, 0, len, 0);

    
    translate(len, 0);
    //recursion
    
    //for (int i = 0; i < branches; i++) {
      
    //  float a = map(i, 0, branches-1, -angle, angle);
    //  rotate(radians(a));
    //  drawBranch(angle, len, showOrigin, limit-1, branches, thickness-1);
    //  rotate(-radians(a));
    //}
    
        translate(-len, 0);
   }
    
   void display() {
     
   }
}
    