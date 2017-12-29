import processing.sound.*;
SoundFile file;
SoundFile anotherFile;
SoundFile drake;

import processing.video.*;
Movie drakeMovie;
Movie drakeMovie2;




void setup() {
  size(640, 360);
  background(255);
  
  colorMode(HSB);
    
  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "beach_boy.mp3");
  file.loop();
  
  anotherFile = new SoundFile(this, "scratch.mp3");
  
  drake = new SoundFile(this, "Drake_HotlineBling.mp3");
  
  drakeMovie = new Movie(this, "Drake_HotlineBlingV.mp4");
  drakeMovie2 = new Movie(this, "drakeVideoplayback.mp4");
  
}      

float soundRate = 1;
float c;

void draw() {
  background(c, mouseY, mouseX);
  file.amp(mouseY/100.0);
  text(soundRate, 50, 50);
  
  text("CONTROLS:", 50, 70);
  text("p = PLAY SONG", 50, 85);
  text("SPACE BAR = STOP", 50, 100);
  text("[ = SLOWDOWN", 50, 115);
  text("] = SPEED-UP", 50, 130);
  text("b = PLAY BACKWARDS", 50, 145);
  text("n = ORIGINAL SPEED", 50, 160);
  text("d = DJ SOUND", 50, 175);
  text("f = FUN", 50, 200);
  text("g = MORE FUN", 50, 215);
  text("` = DRUM MACHINE", 50, 250);
  text("MOUSE UP = VOLUME DOWN", 50, 275);
  text("MOUSE DOWN = VOLUME UP", 50, 290);
  
  if (c >= 255)  c=0;  else  c++;
  image(drakeMovie, 0, 0);
  image(drakeMovie2, 0, 0);
}


void movieEvent(Movie m) {
  m.read();
}



void keyPressed() {
  if (key == 'p') {
    file.play();
  } else if (key == ' ') {
    file.stop();
    anotherFile.stop();
    drake.stop();
    drakeMovie.pause();
    drakeMovie2.pause();
    
  } else if (key == '[') {
    soundRate -= 0.1;
    file.rate(soundRate);
    
  } else if (key == ']') {
    soundRate += 0.1;
    file.rate(soundRate);
  
  } else if (key == 'b') {
    soundRate = -1;
    file.rate(soundRate);
  } else if (key == 'n') {
    soundRate = 1;
    file.rate(soundRate);
  

  } else if (key == 'd') {
    anotherFile.play(); 
    file.amp(10.0/100.0);
  
  } else if (key == 'f') {
    drakeMovie.play(); 
    drakeMovie.jump(31);
    
    file.stop();
    anotherFile.stop();
    drake.stop();
    drakeMovie2.stop();
    
  } else if (key == 'g') {
    drakeMovie2.play(); 
    drakeMovie2.jump(5);
    
    file.stop();
    anotherFile.stop();
    drake.stop();
    drakeMovie.stop();
  

  } else if (key == '`') {
    launch("/Volumes/Macintosh HD/SAIC/Spring 2017/Art and Technology/Object Oriented Programming/Processing/Week 2/drumMachine/application.macosx/drumMachine.app");
    ///Volumes/Macintosh HD/SAIC/Spring 2017/Art and Technology/Object Oriented Programming/Processing/Week 2/drumMachine/application.macosx
    exit(); 
  }
}

/*
void mousePressed() {
  if ((drakeMovie.time() == 1) && (drakeMovie2.time() == 0)) {
    drakeMovie.pause();
  } else if ((drakeMovie2.time() == 1) && (drakeMovie.time() == 0)) {
    drakeMovie2.pause();
  }
  
  
}

void mouseReleased() {
  
  if ((drakeMovie.time() == 1) && (drakeMovie2.time() == 0)) {
    drakeMovie.play();
  } else if ((drakeMovie2.time() == 1) && (drakeMovie.time() == 0)) {
    drakeMovie2.play();
  }
}
*/