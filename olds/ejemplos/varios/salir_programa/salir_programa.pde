/*
RUTINA PARA CERRAR EL PROGRAMA
 */

void setup() {
  size(600, 600);
  background(#348F9A);
}

void draw() {

  // muestra un texto en pantalla
  textSize(20);
  fill(#000000);
  text("Presione la tecla q para salir", 20, 100);
}

// evento de teclado
void keyPressed() {

  // si se presiona la tecla q sale del programaq
  if (key == 'q') {
    exit();
  }
  
}
