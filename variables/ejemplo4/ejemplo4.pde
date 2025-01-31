/*
 VARIABLES
 EJEMPLO 4
 */

int posicionX;
int posicionY;

void setup() {
  size(400, 400);
  background(#C77CFA);
}

void draw() {

  fill(#D2E834);
  posicionX = mouseX - 25;
  posicionY = mouseY - 25;
  ellipse(posicionX, posicionY, 50, 50);
}
