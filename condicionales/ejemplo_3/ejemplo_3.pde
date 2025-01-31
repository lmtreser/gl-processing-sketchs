/*
 CONDICIONALES
 EJEMPLO Nro. 3
 */

int var = 0;

void setup () {
  size(500, 500);
  background(#FFFFFF);
}

void draw() {

  ellipse(var, 100, 30, 30);
  var = var + 1;
  if (var < 100) {
    fill(250, 5, 69);
  } else if (var < 200) {
    fill(60, 250, 30);
  } else if (var < 300) {
    fill(23, 42, 250);
  } else {
    fill(125, 125, 125);
  }
}
