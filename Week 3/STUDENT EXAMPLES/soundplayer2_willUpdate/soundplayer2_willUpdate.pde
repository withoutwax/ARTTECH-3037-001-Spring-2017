import processing.sound.*;
SoundFile file1;
SoundFile file2;
SoundFile file3;
color bg = color(230,230,230);
int xposition=300;

color bg1 = color(94,199,221);
color bg2 = color(128,204,87);
color bg3 = color(204,203,87);
color line = color(230,230,230);

void setup() {
  
  size(600, 600);
  file1 = new SoundFile(this, "Rhapsody.mp3");
  file2 = new SoundFile(this, "Phantom.mp3");
  file3 = new SoundFile(this, "WickedFate.mp3");
  file1.play();
}

void draw() {
  background(bg);
  stroke(line);
  fill(181,214,226);
  ellipse(xposition,300,400,400);
  fill(bg1);
  ellipse(xposition,300,100,100);
  fill(197,226,181);
  ellipse(xposition-500,300,400,400);
  fill(bg2);
  ellipse(xposition-500,300,100,100);
  fill(231,229,183);
  ellipse(xposition+500,300,400,400);
  fill(bg3);
  ellipse(xposition+500,300,100,100);
}

void keyPressed() {
  if (key == 'a') {
    if(xposition == 300){
      file1.stop();
    }
    else if (xposition == -200){
      file3.stop();
    }
    else if (xposition == 800){
      file2.stop();
    }
  }
}

void keyReleased(){
    if (key == 'a') {
    if(xposition == 300){
      file1.play();
    }
    else if (xposition == -200){
      file3.play();
    }
    else if (xposition == 800){
      file2.play();
    }
    }
}

void mousePressed(){
  line = color(0,0,0);
}

void mouseDragged(){
   line = color(0,0,0);
  if(xposition <= 800 && xposition >= -200){
  xposition = xposition + mouseX - pmouseX;
  }
  else if (xposition > 800){
    xposition = 800;
  }
  else if(xposition < -200){
    xposition = -200;
  }
}
void mouseReleased(){
  line = color(230,230,230);
  if (xposition<=550 && xposition >=50){
    xposition = 300;
    file1.stop();
    file1.play();
    file2.stop();
    file3.stop();
  }
  else if (xposition<=800 && xposition > 550){
    xposition = 800;
    file2.stop();
    file2.play();
    file1.stop();
    file3.stop();
  }
  else if (xposition< 50 && xposition >= -200){
    xposition = -200;
    file3.stop();
    file3.play();
    file1.stop();
    file2.stop();
  }
}