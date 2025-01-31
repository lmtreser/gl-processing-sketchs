/*
 CONDICIONALES
 EJEMPLO Nro. 5
 */

boolean boton = false;

void setup () {
  size(500, 500);
}

void draw() {

  if (boton) {
    background(34, 23, 240);
    stroke(0);
  } else {
    background(0);
    stroke(255);
  }

  fill(175);
  rect(80, 80, 40, 40);
}

void mousePressed() {
  if (mouseX > 80 && mouseX < 120 && mouseY > 80 && mouseY < 120) {
    boton = !boton;
  }
}
