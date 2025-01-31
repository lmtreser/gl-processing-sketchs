/*
  VARIABLES
  EJEMPLO 2
 */

void setup() {
  size(400, 400);
  frameRate(30);
}

void draw() {

  background(#C77CFA);
  stroke(255);
  fill(#FAF138);
  rectMode(CENTER);
  rect(width/2, height/2, mouseX + 10, mouseY + 10);
    
  fill(0,0,0);
  text("frames:", 10,20);
  text(frameCount,60,20);
  
  // Desplazar
  //text("Hola",frameCount,50);
  
}
