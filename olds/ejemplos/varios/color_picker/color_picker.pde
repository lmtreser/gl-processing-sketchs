/* COLOR PICKER
 TOMAR COLOR DE UNA FOTO
 */

// Crear el contenedor de imagen
PImage fotito;

void setup() {

  // configuración de la pantalla
  size(426, 576);
  background(#000000);

  // cargo la foto en el contenedor y la muestro
  fotito = loadImage("robotito.jpg");
  image(fotito, 0, 0);

  // cuadrito que mantiene el color
  fill(#FFFFFF);
  rect (10, 65, 50, 50);

}

void draw() {

  // consigo el color bajo el puntero del mouse
  color pick = color (get(mouseX, mouseY));

  // dibujo el cuadro color picker
  fill(pick);
  rect (10, 10, 50, 50);

  // dibujo el cuadro que retiene el color elegido
  if (mouseButton == LEFT) {
    fill(pick);
    rect (10, 65, 50, 50);
  }
}
