int numOfLevels = 11;
int numOfBranches = 4;
float angle1 = 50;
int lengthOfBranch = 300;

void setup() {
  fullScreen();
}



void draw() {
  background(255, 250, 240);
  
  pushMatrix();
  translate(width/2, height); //move origin to center
  rotate(radians(-90));
  tree(angle1, lengthOfBranch, numOfLevels, numOfBranches, numOfLevels);
  
  popMatrix();
  //noLoop();
  
}


void tree(float angle, float len, int levels, int branches, int thickness) {
  len *= random(0.3, 0.9);
  thickness *= random(0.795, 0.865);
  float branch = random(2, branches);
  stroke(0, 200);
  
  
  if (levels > 1){
    strokeWeight(thickness);
    line(0, 0, len, 0);
    translate(len, 0);
    
    
      for (int i = 0; i < branch; i++) {
        float ang = random(-angle, angle);
        
        pushMatrix();
        rotate(radians(ang));
        tree(angle, len, levels-1, branches, thickness);
        popMatrix();
      
      }
     translate(-len, 0);   
  } else {
    leaf();
  }
}




void leaf() {
  strokeWeight(0);
  stroke(51, 26, 0, 65);
  ellipse(0, 0, 3, 3);
}