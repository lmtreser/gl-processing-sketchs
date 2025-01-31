/*
 CONDICIONALES
 EJEMPLO Nro. 7
 */

PFont fuente;
int clicks = 0;

void setup () {
  size(500, 500);
  background(#959191);
  fuente = loadFont("Courier-48.vlw");
  textFont(fuente);
  textSize(16);
}

void draw() {
  background(#959191);
  //dibujo el botón
  fill(175);
  rect(80, 80, 40, 40);

  if (mouseX > 80 && mouseX < 120 && mouseY > 80 && mouseY < 120 && mousePressed) {
    clicks++;
  }


  //contador de clics
  fill(0);
  text("Cantidad de clics:", 15, 15);
  text(clicks, 190, 15);
}
