/*
 CONDICIONALES
 EJEMPLO Nro. 4
 */

boolean boton = false;

void setup () {
  size(500, 500);
}

void draw() {

  if (mouseX > 80 && mouseX < 120 && mouseY > 80 && mouseY < 120 && mousePressed) {
    boton = true;
  } else {
    boton = false;
  }

  if (boton) {
    background(255, 13, 56);
    stroke(0);
  } else {
    background(43, 250, 78);
    stroke(255);
  }

  fill(175);
  rect(80, 80, 40, 40);
}
