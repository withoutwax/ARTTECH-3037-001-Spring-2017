int xposition; //declaring a memory
int speed;
int anotherXposition;

int control;

void setup() {
  xposition = 50;
  anotherXposition = 50;
  speed = 2;
  size(600, 600);
  
  
}


void draw() {
  background(255); //fill the canvas
  xposition++;
  speed++;
  anotherXposition = speed*2;
  control = xposition - mouseY++;
  
  //rect(xposition, 50, 100, 100);
  //rect(mouseX, mouseY, 100, 20);
  //rect(xposition, mouseY, 100, 20);
  //rect(anotherXposition, 200, 100, 100); 
  
  rect(control, mouseY, 100, 100);
  
  
  
}