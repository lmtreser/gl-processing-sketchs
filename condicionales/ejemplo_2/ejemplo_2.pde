/*
 CONDICIONALES
 EJEMPLO Nro. 2
 */

int var = 0;

void setup () {
  size(500, 500);
  background(#FFFFFF);
}

void draw() {

  ellipse(var, 100, 30, 30);
  var = var + 1;
  if (var < 200) {
    fill(0, 30, 200);
  } else {
    fill(127, 230, 98);
  }
}
