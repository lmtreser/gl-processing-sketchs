/*
Movimiento de objeto mediante teclado
 */

// declaración de variables
int x = 300;
int y = 300;

void setup() {
  size(600, 600);
}

void draw() {
  
  background(#4BB9CE);
  
  // dubujo la figura
  fill(#540FCE);
  noStroke();
  ellipse(x, y, 30, 30);

}

// evento tecla presionada
void keyPressed() {

  // izquierda
  if (key == 'a') {
    x=x-2;
  }

  // arriba
  if (key == 'w') {
    y=y-2;
  }

  // abajo
  if (key == 's') {
    y=y+2;
  }

  // derecha
  if (key == 'd') {
    x=x+2;
  }
}
