//This is for declaring the variables individually:
/*
PImage lime;
PImage carrot;
PImage lemon;
*/

//This is for declaring the variables in Array:
int numberOfMacaron = 3;

PImage[] macaron = new PImage[numberOfMacaron];
//int loopCounter = 0;
float[] xPosition = new float[numberOfMacaron];






void setup() {
  size(340, 120);
  
  
  
  macaron[0] = loadImage("keyLimMac.jpg");
  macaron[1] = loadImage("carrotCakeMac.png");
  macaron[2] = loadImage("lemonMac.png");
  
  xPosition[0] = 10;
  xPosition[1] = 120;
  xPosition[2] = 230;
  
  
  
  //This is for declaring the variables individually:
/*
  lime = loadImage("KeyLimMac.jpg");
  carrot = loadImage("CarrotCakeMac.png");
  lemon = loadImage("LemonMac.png");
  */
}

/*
void randomization () {
  for (int i = 0; i < 3; i++) {
      xPosition[i] = random(3);
    }
}
*/

void draw() {

//This is for declaring the variables in Array (without the for loop):  
/*
  image(macaron[0], 10, 10);
  image(macaron[1], 120, 10);
  image(macaron[2], 230, 10);
*/

//This is for declaring the variables individually:
/*
  image(lime, 10, 10);
  image(carrot, 120, 10);
  image(lemon, 230, 10);
*/
}




void keyPressed() {  
  if (key == ' ') {
     for (int i = 0; i < macaron.length; i++) {
    
    int rand = (int)random(xPosition.length);
    image(macaron[i], xPosition[rand], 10);
  }
       
     }
   }