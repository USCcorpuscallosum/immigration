//hello there!

import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;

Minim soundCode;
AudioPlayer backgroundMusic;


void setup(){
  size(500,500);
  background(0,0,0);
  
  // Sound
  soundCode = new Minim(this);
  backgroundMusic = soundCode.loadFile("hello.wav");
  backgroundMusic.play();
}

void draw(){
  noStroke();
  fill(mouseX - mouseY, mouseX, mouseY);
  ellipse(mouseX,mouseY,5,5);
}

void stop(){
  backgroundMusic.close();
  soundCode.stop();
  super.stop();
}