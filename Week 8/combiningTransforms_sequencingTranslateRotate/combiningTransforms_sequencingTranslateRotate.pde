int numOfTailes = 10;

void setup() {
  size(600,600);
}

float angle1 = 0, angle2 = 90;
float length1 = 100, length2 = 40;


void draw() {
  background(255);
  
  //angle1 = map(mouseX, 0, width, 0, TWO_PI);
  angle1 = mouseX;
  angle2 = mouseY;
  
  translate(width/2, height/2); //move origin to center
  
  rotate(radians(angle1)); // rotate by angle1
  stroke(255, 0, 0);//draw in red
  line(0, 0, length1, 0); //line along x axis, length of length1
  translate(length1, 0); //move origin to center
  
  for (int i = 0; i < numOfTailes; i++) {
    rotate(radians(angle2));//rotate by angle2
    stroke(random(255), random(255), random(255));
    line(0, 0, length2, 0); //another line, length2
    translate(length2, 0);
   }
  
  resetMatrix();
  fill(0);
  text("angle1: " + angle1, 20, 20);
  text("angle2: " + angle2, 20, 40);
}