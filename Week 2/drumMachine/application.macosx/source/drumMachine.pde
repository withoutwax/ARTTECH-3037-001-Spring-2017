import processing.sound.*;
SoundFile clap;
SoundFile cowBell;
SoundFile crash;
SoundFile hiHat;
SoundFile hiHat2;
SoundFile kick;
SoundFile kick2;
SoundFile kick3;
SoundFile openHiHat;
SoundFile ride;
SoundFile shaker;
SoundFile snare;
SoundFile snare2;
SoundFile tom;
SoundFile tom2;


void setup() {
  size(640, 360);
  
    
  // Load a soundfile from the /data folder of the sketch and play it back
  clap = new SoundFile(this, "clap-808.wav");
  cowBell = new SoundFile(this, "cowbell-808.wav");
  crash = new SoundFile(this, "crash-acoustic.wav");
  hiHat = new SoundFile(this, "hihat-808.wav");
  hiHat2 = new SoundFile(this, "hihat-acoustic01.wav");
  kick = new SoundFile(this, "kick-808.wav");
  kick2 = new SoundFile(this, "kick-acoustic02.wav");
  kick3 = new SoundFile(this, "kick-electro01.wav");
  openHiHat = new SoundFile(this, "openhat-acoustic01.wav");
  ride = new SoundFile(this, "ride-acoustic02.wav");
  shaker = new SoundFile(this, "shaker-shuffle.wav");
  snare = new SoundFile(this, "snare-808.wav");
  snare2 = new SoundFile(this, "snare-acoustic01.wav");
  tom = new SoundFile(this, "tom-acoustic01.wav");
  tom2 = new SoundFile(this, "tom-acoustic02.wav");
}      

float soundRate = 1;

void draw() {
  background(1);
  
  textSize(12);
  text("DRUM MACHINE:", 50, 50);
  
  textSize(12);
  text("CONTROLS:", 50, 70);
  text("h = Hi-Hat", 50, 85);
  text("j = Hi-Hat 2", 50, 100);
  text("c = Kick", 50, 115);
  text("x = Kick 2", 50, 130);
  text("v = Kick 3", 50, 145);
  text("d = Snare", 50, 160);
  text("s = Snare 2", 50, 175);
  text("t = Crash", 50, 190);
  text("k = Tom", 50, 205);
  text("l = Tom 2", 50, 220);
  text("y = Ride", 50, 235);
  text("o = Clap", 50, 250);
  text("p = Cow Bell", 50, 265);
  
  text("` = SOUND MACHINE", 50, 295);
}



void keyPressed() {
  if (key == 'h') {
    hiHat.play();
    textSize(30);
    text("HI-HAT", 250, 100);
    
  } else if (key == 'j') {
    hiHat2.play();
    text("HI-HAT 2", 250, 180);
    
  } else if (key == 'c') {
    kick.play();
    textSize(120);
    text("KICK", 270, 120);
    
  } else if (key == 'x') {
    kick2.play();
    textSize(120);
    text("KICK 2", 250, 200);
    
  } else if (key == 'v') {
    kick3.play();
    textSize(120);
    text("KICK 3", 250, 300);
    
  } else if (key == 'd') {
    snare.play();
    textSize(80);
    text("SNARE", 170, 285);
    
  } else if (key == 's') {
    snare2.play(); 
    textSize(70);
    text("SNARE 2", 170, 180);
    
  } else if (key == 't') {
    crash.play();
    textSize(50);
    text("CRASH", 480, 50);
    
  } else if (key == 'k') {
    tom.play();
    textSize(30);
    text("TOM", 200, 100);
    
  } else if (key == 'l') {
    tom2.play();
    textSize(30);
    text("TOM 2", 350, 60);
    
  } else if (key == 'y') {
    ride.play();
    textSize(30);
    text("RIDE", 500, 350);
    
  } else if (key == 'o') {
    clap.play();
    textSize(20);
    text("CLAP", 100, 350);
    
  } else if (key == 'p') {
    cowBell.play();
    textSize(20);
    text("COW BELL", 100, 320);
  
  
  } else if (key == '`') {
    launch("/Volumes/Macintosh HD/SAIC/Spring 2017/Art and Technology/Object Oriented Programming/Processing/Week 2/soundFilePlayer/application.macosx64/soundFilePlayer.app");
    exit();
  }
  
    
  
}

