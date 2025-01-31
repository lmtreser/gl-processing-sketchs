/*
 VARIABLES
 EJEMPLO 5
 */

void setup() {
  size(400, 400);
  background(#C77CFA);
}

void draw() {

  stroke(#D2E834);
  strokeWeight(3);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void mousePressed(){

  background(0);
  
}
