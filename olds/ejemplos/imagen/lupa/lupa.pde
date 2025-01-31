//EDUARDO CHARLONE
//2020

PImage lupa; //define lupa como imagen
PImage fondo; //define fondo como imagen
void setup() {
  size(250, 250); // tamaño canvas
  smooth(4); // suavizado de lineas
  lupa = loadImage("lupa.png"); //lee imagen de lupa
  fondo = loadImage("fondo.jpg");//lee imagen de fondo
}
void draw() { 
  image(fondo,0,0,250,250); // imagen de la pieza
  image(lupa,mouseX-width,mouseY-height,500,500); // imagen de la lupa
  stroke(255,255,255,90); // color y transparencia del brillo
  strokeWeight(10); // ancho del brillo
  noFill(); // no pinta el espacio producido por la curva bezier
  bezier(mouseX-45,mouseY-20,mouseX-50,mouseY-8,mouseX-45,mouseY+7,mouseX-40,mouseY+10); //brillo en la lupa
  
}

 
