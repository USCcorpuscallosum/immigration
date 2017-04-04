void setup() {
  size(500, 500); 
  background(255); 
  noStroke(); 
  rectMode(CORNERS); 
 
}

void draw() {

  rect(0, 0, 250, 250); 
  rect(250, 250, 500, 500);  
  rect(0, 500, 250, 500);
  rect(500, 500, 250, 250); 
  if (mousePressed == true) {
    if ((mouseX < 250) && (mouseY < 250)) {
      background(55, 70, 120, 30); 
    }
    else if ((mouseX > 250) && (mouseY < 250)){
      background(60, 123, 50, 40);
    }
    else if ((mouseX < 250) && (mouseY > 250)){
      background(10, 22, 50, 12); 
    } 
    else if ((mouseX > 250) && (mouseY > 250)) {
      background(90, 50, 65, 40); 
    }
  }
}