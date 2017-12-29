


class Particle
{
         float x ;
         float y ;
         float sx ;
         float sy ;
         float d;
        
      Particle()
      {
         x = random(0,width);
         y = random(0,height);
         sy = 0;
         sx = random(2,3);
      } 
      
      
       void update()
       {
           x += sx;
           y += sy;     
       }
        
        
        
        void show()
        {
          noStroke(); 
          fill(0);
          ellipse(x,y,6,6);  
         
        }
      
         void bounce()
         {   
              if(x>width || x<0)
              {
                 sx = sx*-1;
              }    
              if(y>height || y<0)
              {
                 sy = sy*-1;
              }
         }
         
   
}