/* Interprete para Logo
 Lucas Martín Treser
 Julio de 2019
 */

PImage tortuga; // contenedor tortuga

// Variables para el movimiento de la tortuga
int tortuX;
int tortuY;

void setup() {
  size(800, 600);
  background(#FFFFFF);
  tortuga=loadImage("tortu.png");   // cargo tortuga
  tortuga.resize(40, 46);           // defino tamaño de tortuga
}

void draw() {
  rect(tortuX,tortuY,100,100);
  image(tortuga, tortuX, tortuY);
  
}
