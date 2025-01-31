/*
 Uso de fuentes tipográficas
 Domingo 13 de septiembre de 2020
 */

PFont fuente1, fuente2, fuente3;

void setup() {

  size(500, 500);
  background(#AF7171);

  fuente1 = loadFont("Century.vlw"); // Leer la fuente
  fuente2 = loadFont("Courier.vlw");
  fuente3 = loadFont("Baby.vlw");

  textFont(fuente1);
  fill(25, 28, 147, 255);
  textSize(40);
  text("Hola", 0, 40);

  textFont(fuente2);
  fill(25, 28, 147, 155);
  textSize(50);
  text("A", 0, 90);

  textFont(fuente3);
  fill(25, 28, 147, 55);
  textSize(60);
  text("TODOS", 0, 140);
}

void draw() {

}
