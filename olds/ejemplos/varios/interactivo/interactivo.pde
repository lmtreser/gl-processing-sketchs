/* Ejemplo arte + programación
 Prof. Lucas Martín Treser
 Colegio San Agustín
 */

PImage escudo;

// VARIABLES
int cuenta=0;
float coR= 1;
float coG= 1;
float coB= 1;

void setup() {
  size(800, 600);        // Configura el tamaño de la pantalla
  background(#C0FAF8);   // Color de fondo
}

void draw() {

  // Dibujo un rectangulo
  noFill();
  strokeWeight(2);
  stroke(#FC1008);
  rect(1, 1, 100, 100);

  // Texto "CLIC!"
  fill(#FC1008);
  textSize(26);
  text("CLIC!!!", 10, 60); 

  // Dibujo un rectangulo
  fill(coR, coG, coB);
  strokeWeight(5);
  stroke(#454545);
  rect(150, 150, 200, 200);

  // Dibujo un circulo
  fill(#08FC26);
  strokeWeight(15);
  stroke(#D81BF2);
  ellipse(450, 450, 200, 200);
}

// FUNCIÓN PARA DETECTAR LA ACCIÓN DEL MOUSE
void mousePressed() {

  // Genero un área que permite cambiar el color del fondo al hacer clic
  if (overRect(150, 150, 200, 200) == true) {
    coR = random(255);
    coG = random(255);
    coB = random(255);
  }

  // Genero un área que permite cambiar el color de cuadrado al hacer clic
  if (overRect(0, 0, 100, 100) == true) {
    background (random(255), random(255), random(255));
  }

  // Genero un área que permite mostrar/ocultar una imagen
  if (overRect(350, 350, 200, 200) == true) {
    // Activar con clic izquierdo
    if (mouseButton == LEFT) {
      escudo=loadImage("col.png");
      image(escudo, 400, 10);
    }
    // Activar con clic derecho
    if (mouseButton == RIGHT) {
      escudo=loadImage("old.png");
      image(escudo, 550, 10);
    }
  }
}

// FUNCIÓN PARA DETECTAR LA POSICIÓN DEL PUNTERO DEL MOUSE EN UNA REGIÓN
boolean overRect(int x, int y, int width, int height) {

  // Si las coordenadas son correctas envía true, sino false
  if (mouseX >= x && mouseX <= x+width &&     
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
