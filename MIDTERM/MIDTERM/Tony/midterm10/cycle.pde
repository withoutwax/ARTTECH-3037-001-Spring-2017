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
     x += sx/6;
     y += sy/6;     
   }
  
  
  
  void show(){
    noStroke(); 
    fill(211,224,234);
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