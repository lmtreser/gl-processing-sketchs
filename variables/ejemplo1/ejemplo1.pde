/*
  VARIABLES
  EJEMPLO 1
 */

int miVariable = 100;

void setup() {
  size(600, 200);
}

void draw() {
  
  //background(#C77CFA);
  strokeWeight(2);
  fill(#FAF138);
  ellipse(miVariable,100,50,50);
  miVariable = miVariable + 1;
  
}
