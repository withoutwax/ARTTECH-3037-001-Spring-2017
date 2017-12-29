//ArrayList<Lines> horLines;
//ArrayList<Lines> verLines;
ArrayList<Lines> lines;

int numberOfLines = 12;
int speed = 3;

PVector vVel;
PVector hVel;


void setup() {
  fullScreen();
  stroke(125, 50);

   //horLines = new ArrayList <Lines>();
   //verLines = new ArrayList <Lines>();
   lines = new ArrayList <Lines>();
   
   
   for (int i = 0; i < numberOfLines; i++) {
     //horLines.add(new Lines(new PVector(0, random(height)), new PVector(width, random(height))));
     //verLines.add(new Lines(new PVector(random(width), 0), new PVector(random(width), height)));
     
     if (random(0, 1) < 0.5) {
       lines.add(new Lines(new PVector(0, random(height)), new PVector(width, random(height))));
     } else {
       lines.add(new Lines(new PVector(random(width), 0), new PVector(random(width), height)));
     }
      
   }
   
}




void draw() {
  background(255);
  
 // println
  for (int i = 0; i < numberOfLines; i++) {
    //horLines.get(i).display();
    //verLines.get(i).display();
    lines.get(i).display();
    
    //horLines.get(i).drift();
    //verLines.get(i).drift();
    lines.get(i).drift();
     
}
}


  
  
void keyPressed() {
  if (key == ' ') {

  }
}