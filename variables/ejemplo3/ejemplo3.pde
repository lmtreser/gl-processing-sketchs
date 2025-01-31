/*
 VARIABLES
 EJEMPLO 3
 */

float rojo;
float verde;
float azul;
float alfa;
float diametro;
float posicionX;
float posicionY;

void setup() {
  size(400, 400);
  background(#C77CFA);
}

void draw() {

  rojo = random(255);
  verde = random(255);
  azul = random(255);
  alfa = random(255);
  
  diametro = random(90);
  posicionX = random(width);
  posicionY = random(height);

  noStroke();
  fill(rojo, verde, azul, alfa);
  ellipse(posicionX, posicionY, diametro, diametro);
}
