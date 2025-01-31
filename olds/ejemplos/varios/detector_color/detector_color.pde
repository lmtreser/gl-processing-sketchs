/*
RUTINA PARA DETECTAR COLORES
 */

// declaración de variables
int movX = 0;
int movY = 250;

void setup() {

  size(500, 500);
}

void draw() {

  // pinto el fondo e incremento una variable
  background(#0000FF);
  movX++;

  // dibujo un rectangulo de color rojo
  noStroke();
  fill(#FF0000);
  rect(250, 0, 500, 500);

  // dibujo un circulo
  fill(#FF00FF);
  ellipse(movX, movY, 50, 50);

  // detecto el cambio de color
  if (get(movX+25, movY) == -65536) {
    fill(#FFFFFF);
    textSize(40);
    text("GAME OVER", 150,250);
    noLoop(); // detiene la ejecución de draw
  }
  
}
