import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;

Minim soundCode;
AudioPlayer backgroundMusic;
boolean playing = false;
 
void setup() {
  size(500, 500); 
  background(255); 
  noStroke(); 
  rectMode(CORNERS); 
  
  //Sound
  soundCode = new Minim(this);
 
 
}

void draw() {

  rect(0, 0, 250, 250); 
  rect(250, 250, 500, 500);  
  rect(0, 500, 250, 500);
  rect(500, 500, 250, 250); 
  if (mousePressed == true) {
    if ((mouseX < 250) && (mouseY < 250)) {
      background(55, 70, 120, 30); 
      if(playing)
       {
         playing = false;
         backgroundMusic.close();
       }
       backgroundMusic = soundCode.loadFile("hello.wav");
       backgroundMusic.play();
       playing = true;
    }
    else if ((mouseX > 250) && (mouseY < 250)){
      background(60, 123, 50, 40);
      if(playing)
       {
         playing = false;
         backgroundMusic.close();
       }
       backgroundMusic = soundCode.loadFile("Frank Sinatra - Fly Me To The Moon with Lyrics.mp3");
       backgroundMusic.play();
       playing = true;
    }
    else if ((mouseX < 250) && (mouseY > 250)){
      background(10, 22, 50, 12); 
      if(playing)
       {
         playing = false;
         backgroundMusic.close();
       }
       backgroundMusic = soundCode.loadFile("Ed Sheeran - Shape Of You [Official Lyric Video].mp3");
       backgroundMusic.play();
       playing = true;
    } 
    else if ((mouseX > 250) && (mouseY > 250)) {
      background(90, 50, 65, 40); 
       if(playing)
       {
         playing = false;
         backgroundMusic.close();
       }
       backgroundMusic = soundCode.loadFile("Bruno Mars  Thats What I Like [24K MAGIC] - Lyric Video.mp3");
       backgroundMusic.play();
       playing = true;
    }
  }
}

void stop(){
  backgroundMusic.close();
  soundCode.stop();
  super.stop();
}