cycle[] Balls = new cycle[50];
cycle partA;
cycle partB;
float minDist= 100;
float springAmount = 1; //<>//

int b;

void setup(){
 size(1440,300);
 frameRate(200);
 for(int i=0; i<Balls.length ; i++){
   Balls[i] = new cycle();
 }
}
  
void draw(){
  background(255);
  for(int i=0; i<Balls.length; i++){
    partA = Balls[i];
    for(int b = 0; b < Balls.length; b++){           
      partB = Balls[b];
      
      if (dist(partA.x,partA.y,partB.x,partB.y)< minDist){
      float dx = partB.x-partA.x;
      float dy = partB.y-partA.y;
      float dist = sqrt(dx*dx + dy*dy); 
      stroke(color(random(0,250),random(110,150),random(110,150), 255 - 255 * (dist/ minDist)));
      //stroke(color(0, 255 - 255 * (dist/ minDist)));
      line(partA.x,partA.y,partB.x,partB.y);
      
      }
 
    } 
  
  Balls[i].update();
  Balls[i].show();
  Balls[i].bounce();
  println(i);
    }
   }
  
//void spring(cycle partA, cycle partB) {
//  float dx = partB.x - partA.x;
//  float dy = partB.y - partA.y;
//  float dist = sqrt(dx * dx + dy * dy);
//  if (dist < minDist) {
//    strokeWeight(1);
//    stroke(color(#000000, 255 - 255 * (dist / minDist)));
//    line(partA.x, partA.y, partB.x, partB.y);
//    float ax = dx * springAmount;
//    float ay = dy * springAmount;
//    partA.sx += ax;
//    partA.sy += ay;
//    partB.sx -= ax;
//    partB.sy -= ay;
//  }
//}  

  