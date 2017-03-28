//hello there!

void setup(){
  size(720,720);
  background(0,0,0);
}

void draw(){
  noStroke();
  fill(mouseX - mouseY, mouseX, mouseY);
  rect(mouseX,mouseY,0.3*mouseX,0.3*mouseY);
}