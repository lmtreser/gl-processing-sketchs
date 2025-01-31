/*
 CONDICIONALES
 EJEMPLO Nro. 8
 */

int clic = 0;

void setup () {
  size(500, 500);
  background(#959191);
  //dibujo el botón
  fill(#089D65);
  stroke(#959D95);
  rect(80, 80, 40, 40);
}

void draw() {

  //dibujo los puntos
  if (clic == 1) {
    stroke(#7D0895);
    strokeWeight(10);
    point(80, 80);
    point(80, 120);
    point(120, 80);
    point(120, 120);
  } 
  //dibujo la grilla
  if (clic == 2) {
    stroke(#959D95);
    strokeWeight(1);
    line(80, 0, 80, 500);
    line(120, 0, 120, 500);
    line(0, 80, 500, 80);
    line(0, 120, 500, 120);
  }
  //dibujo las coordenadas
  if (clic == 3) {
    fill(0);
    text("80,80", 40, 75);
    text("80,120", 33, 115);
    text("120,80", 125, 75);
    text("120,120", 125, 115);
    clic = 4;
  }

  //reinicio el dibujo
  if (clic == 5) {
    clic = 0;
    background(#959191);
    fill(#089D65);
    rect(80, 80, 40, 40);
  }
}

//evento clic del mouse
void mousePressed() {
  if (mouseX > 80 && mouseX < 120 && mouseY > 80 && mouseY < 120) {
    clic++;
  }
}
