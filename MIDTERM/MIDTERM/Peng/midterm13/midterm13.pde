import ddf.minim.*; //<>//
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



Particle[] Balls = new Particle[80];
Particle partA;
Particle partB;
float minDist= 200;
float springValue = 0.0001;
Minim minim;
AudioPlayer song; 
int b;




void setup()
{
     
     fullScreen();
     //size(500,500);
     background(0);
     frameRate(400);
     minim = new Minim(this);
     song= minim.loadFile("background.mp3");
     song.loop();


     
     
     for(int i=0; i<Balls.length ; i++)
     {
       Balls[i] = new Particle();
     }
}
  
void draw()
{
      background(color(random(0,10),random(0,10),random(0,10)));
          
      if (mousePressed == true) 
      {
          noCursor();
      } else {
          cursor(HAND);
      }
      
      for (int i = 0; i < Balls.length; i++)
      {          

          for(int j = i + 1; j < Balls.length; j++)
      {
           spring(Balls[i], Balls[j]);     
      }
      
            Balls[i].update();
            //Balls[i].show();
            Balls[i].bounce();
      }
           
       
      
      //println(i);
      
}
  

void spring(Particle partA, Particle partB)
{
  
  
      float dx = partB.x-partA.x;
      float dy = partB.y-partA.y;
      //float mx = constrain(mouseX, 40, 80);
      //float my = constrain(mouseY, 40, 80);
      //float dist = sqrt(dx*dx + dy*dy)*mx/my*1.5; 

      float dist = sqrt(dx*dx + dy*dy)*mouseX/mouseY*1.5;
      constrain(dist,900,1000);
         
       if(dist < 300)
       {
  
          float ax = dx * springValue;
          float ay = dy * springValue;
           
          
          partA.sx += ax;
          partA.sy += ay;
          partB.sx -= ax;
          partB.sy -= ay;
      
    
          stroke(color(random(0,255),50,random(0,255), 255 - 255 * (dist/ minDist)));
          line(partA.x, partA.y, partB.x, partB.y);
       }
    
}
      
      
     
      
      
      


  