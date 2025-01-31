/*
 Uso de imágenes en Processing
 Domingo 13 de septiembre de 2020
 */

PImage foto;

void setup() {
  size(700, 500);
  background(#72A3F0);
  
  foto = loadImage("imagen.jpg");
  foto.resize(600,338);
}


void draw() {
  image(foto, 50, 81);
}
