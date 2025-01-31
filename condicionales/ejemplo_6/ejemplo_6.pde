/*
 CONDICIONALES
 EJEMPLO Nro. 6
 */

boolean boton0 = false;
boolean boton1 = false;

void setup () {
  size(500, 500);
}

void draw() {

  if (mouseX > 80 && mouseX < 120 && mouseY > 80 && mouseY < 120 && mousePressed) {
    background(0, 0, 240);
    stroke(0);
  }

  if (mouseX > 180 && mouseX < 220 && mouseY > 180 && mouseY < 220 && mousePressed) {
    background(240, 0, 0);
    stroke(0);
  }

  fill(175);
  rect(80, 80, 40, 40);
  rect(180, 180, 40, 40);
}
