float d;


class cycle{
  public float x ;
  public float y ;
  public float sx ;
  public float sy ;
  int g;
  
cycle(){
   x = random(0,width);
   y = random(0,height);
   sy = random(0,1);
   sx = random(0,1);
   g= (color(random(0,255),random(0,255),random(0,255)));
} 


 void update(){
     x += sx*2;
     y += sy*2;     
   }
  
  
  
  void show(){
    noStroke();
    fill(g);
    ellipse(x,y,5,5);  

   
  }

   void bounce(){   
        if(x>width || x<0){
           sx = sx*-1;
   }    
        if(y>height || y<0){
           sy = sy*-1;
   }
   
   
}

 
 
 


  


}