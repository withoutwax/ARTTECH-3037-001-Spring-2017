cycle[] Balls = new cycle[20];
cycle partA;
cycle partB;
cycle partC;
float minDist= 100;
float minDist2=60;
float minDist3=40;
float springAmount = 0.005; //<>//

int b;

void setup(){
 size(500,500);
 frameRate(60);
 for(int i=0; i<Balls.length ; i++){
   Balls[i] = new cycle();
 }
}
  
void draw(){
  background(0);
  for(int i=0; i<Balls.length; i++){
    partA = Balls[i];
    for(int b = 0; b < Balls.length; b++){           
      partB = Balls[b];
      for(int c = 0; c< Balls.length; c++){
        partC = Balls[c];
      
      if (dist(partA.x,partA.y,partB.x,partB.y)< minDist){
        if (dist(partB.x,partB.y,partC.x,partC.y)< minDist){
          if (dist(partA.x,partA.y,partC.x,partC.y)< minDist){
      float dx = partB.x-partA.x;
      float dy = partB.y-partA.y;
      float dist = sqrt(dx*dx + dy*dy);
      fill(color(100,235,255, 255 - 255 * (dist/ minDist)));
      triangle(partA.x,partA.y,partB.x,partB.y,partC.x,partC.y);
      float dz = partC.x-partA.x;
      float dw = partC.y-partA.y;
      float dist2 = sqrt(dz*dz + dw*dw);
      fill(color(255,100,139, 255 - 255 * (dist2/ minDist2)));
      triangle(partB.x,partB.y,partA.x,partA.y,partC.x,partC.y);
      float da = partC.x-partB.x;
      float db = partC.y-partB.y;
      float dist3 = sqrt(da*da + db*db);
      fill(color(255,255,99, 255 - 255 * (dist3/ minDist3)));
      triangle(partC.x,partC.y,partB.x,partB.y,partA.x,partA.y);

      
      
      }
      }
      }
 
    } 
  
  Balls[i].update();
  Balls[i].show();
  Balls[i].bounce();
  //println(i);
    }
   }
}

  