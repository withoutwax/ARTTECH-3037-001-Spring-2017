class Dots {
  
  float xpos;
  float ypos;
  float speed;
  float rise;
  float run;
  
  Dots(float xpos_, float ypos_, float speed_, float rise_, float run_) {
    xpos = xpos_;
    ypos = ypos_;
    speed = speed_;
    run = run_;
    rise = rise_;
  }
  
  void display() {
    noStroke();
    fill(0,0,0,30);
    ellipse(xpos, ypos, 10, 10);
    
    //connecting the lines
    for (int i = 0; i < numberOfDots-1; i++) {
      for (int j = i + 1; j < numberOfDots; j++) {
        float d = dist(nodes.get(i).xpos, nodes.get(i).ypos, nodes.get(j).xpos, nodes.get(j).ypos);
        if (d < distance) {
          float strokeWeight = (sqrt((sq(abs(nodes.get(i).xpos-nodes.get(j).xpos)))+(sq(abs(nodes.get(i).ypos-nodes.get(j).ypos)))));
          stroke(0, distance - strokeWeight);
          line(nodes.get(i).xpos, nodes.get(i).ypos, nodes.get(j).xpos, nodes.get(j).ypos);
        }
      }
    }   
  }
  
  void drift() {
    xpos = xpos + (speed * run);
    ypos = ypos + (speed * rise);
    
    if (xpos < 0) {
      run *= -1;
    } else if (xpos > width) {
      run *= -1;
    } else if (ypos < 0) {
      rise *= -1;
    } else if (ypos > height) {
      rise *= -1;
    }
  }
}
  
  