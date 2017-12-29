float d;


class cycle{
  public float x ;
  public float y ;
  public float sx ;
  public float sy ;
  
cycle(){
   x = random(0,width);
   y = random(0,height);
   sy = random(0,1);
   sx = random(0,1);
} 


 void update(){
     x += sx;
     y += sy;     
   }
  
  
  
  void show(){
    noStroke(); 
    fill(0);
    ellipse(x,y,6,6);  
   
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