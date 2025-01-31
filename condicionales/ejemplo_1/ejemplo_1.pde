/*
 CONDICIONALES
 EJEMPLO Nro. 1
 */

int var = 0;

void setup () {
  size(500, 500);
  background(#FFFFFF);
}

void draw() {

  ellipse(var, 100, 30, 30);
  var = var + 1;
  if (var > width/2) {
    background(0);
  }
}
