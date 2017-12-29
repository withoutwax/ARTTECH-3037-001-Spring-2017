cycle[] Balls = new cycle[50];
cycle partA;
cycle partB;
float minDist= 150;
float springAmount = 1; //<>//

int b;

  void setup(){
  fullScreen();
  background(44,44,91);
  //background(0);
 //size(1440,300);
 frameRate(60);
 for(int i=0; i<Balls.length ; i++){
   Balls[i] = new cycle();
 }
}
  
void draw(){
  background(44,44,91);
  for(int i=0; i<Balls.length; i++){
    partA = Balls[i];
    for(int b = 0; b < Balls.length; b++){           
      partB = Balls[b];
      
      if (dist(partA.x,partA.y,partB.x,partB.y)< minDist){
      float dx = partB.x-partA.x;
      float dy = partB.y-partA.y;
      float dist = sqrt(dx*dx + dy*dy); 
      stroke(color(200,150,214, 255 - 255 * (dist/ minDist)));
      //stroke(color(255,178,123, 255 - 255 * (dist/ minDist)));
      //stroke(color(random(0,255), 255 - 255 * (dist/ minDist)));
      line(partA.x,partA.y,partB.x,partB.y);
      
      }
 
    } 
  
  Balls[i].update();
  Balls[i].show();
  Balls[i].bounce();
  println(i);
    }

    }


  