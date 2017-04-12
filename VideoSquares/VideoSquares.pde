import processing.video.*;

Movie natureMovie[]; 
float t0; 
float t; 
int index = 0; 
boolean playing = false; 

void setup() {
  size(1000, 1000); 
  
  natureMovie = new Movie[4]; 
  
  natureMovie[0] = new Movie(this, "wild_yellow_flower.mp4");
  natureMovie[1] = new Movie(this, "white_cherry_flowers.mp4"); 
  natureMovie[2] = new Movie(this, "Magical_Tree_4K_Living_Background.mp4"); 
  natureMovie[3] = new Movie(this, "Orange_flowers.mp4"); 
  
  natureMovie[0].pause(); 
  natureMovie[1].pause(); 
  natureMovie[2].pause(); 
  natureMovie[3].pause(); 
  
  background(255); 
  noStroke(); 
  rectMode(CORNERS); 
}


void draw() {
  background(0); 
  
  if (natureMovie[index].available()) {
    natureMovie[index].read(); 
  }
  image(natureMovie[index], 0, 0); 
  
  if (t > natureMovie[index].duration() + t0) {
    println("finished! " +index); 
  }
  
  t = millis()/1000;
  
  if(!playing) {
    fill(55, 70, 120); 
    rect(0, 0, 500, 500); 
    
    fill(60, 123, 50); 
    rect(500, 500, 1000, 1000); 
    
    fill(200, 22, 50); 
    rect(1000, 1000, 500, 500);
    
    fill(90, 50, 65); 
    rect(0, 1000, 500, 1000); 
  }
  if (mousePressed) {
    if ((mouseX < 500) && (mouseY < 500)) {
      if(playing)
       {
         playing = false;
         natureMovie[index].stop();
       }
       natureMovie[0].play(); 
       index = 0; 
       t0 = millis()/1000; 
       playing = true;
    }
    else if ((mouseX > 500) && (mouseY < 500)){
      if(playing)
       {
         playing = false;
         natureMovie[index].stop();
       }
       natureMovie[1].play(); 
       index = 1; 
       t0 = millis()/1000; 
       playing = true;
    }
    else if ((mouseX < 500) && (mouseY > 500)){
      if(playing)
       {
         playing = false;
         natureMovie[index].stop();
       }
       natureMovie[2].play(); 
       index = 2; 
       t0 = millis() /1000; 
       playing = true;
    } 
    else if ((mouseX > 500) && (mouseY > 500)) {
       if(playing)
       {
         playing = false;
         natureMovie[index].stop();
       }
       natureMovie[3].play(); 
       index = 3; 
       t0 = millis()/1000; 
       playing = true;
    }
  }
  }