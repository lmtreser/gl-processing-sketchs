/*
 Interface de comunicación
 Processing / Arduino
 */

// importar la libreria para puerto serie
import processing.serial.*;
// crear el objeto Serial
Serial miPuerto; 

// declaración de variables
color on1 = color (255, 0, 0);
color off1 = color (111, 118, 116);
color on2 = color (0, 255, 0);
color off2 = color (110, 118, 116);
color on3 = color (0, 0, 255);
color off3 = color (109, 118, 116);

int led1 = off1;
int led2 = off2;
int led3 = off3;
int pote = 1023;

void setup() {
  size(500, 250);
  background(#C5D8D1);

  // definir el numero de puerto COM donde esta Arduino
  String portName = Serial.list()[32];
  // definir el puerto y la velocidad de transmisión
  miPuerto = new Serial(this, portName, 9600);

  // titulo y recuadro
  noFill();
  strokeWeight(2);
  rect(10, 10, 480, 230);
  fill(#000000);
  textSize(25);
  text("INTERFACE PROCESSING / ARDUINO", 35, 55);
}

void draw() {

  // puerto digital (LEDs)
  noStroke();
  fill(led1);
  ellipse(100, 100, 35, 35);
  fill(led2);
  ellipse(100, 150, 35, 35);
  fill(led3);
  ellipse(100, 200, 35, 35);

  // puerto analogico (potenciometro)

  fill(#342B2B);
  textSize(100);
  text(pote, 180, 185);
}

// evento de clic
void mousePressed() {

  // botón led 1  
  if (get(mouseX, mouseY) == off1 ) {
    led1 = on1;
  } 
  if (get(mouseX, mouseY) == on1 ) {
    led1 = off1;
  }

  // botón led 2  
  if (get(mouseX, mouseY) == off2 ) {
    led2 = on2;
  } 
  if (get(mouseX, mouseY) == on2 ) {
    led2 = off2;
  }

  // botón led 3  
  if (get(mouseX, mouseY) == off3 ) {
    led3 = on3;
  } 
  if (get(mouseX, mouseY) == on3 ) {
    led3 = off3;
  }
}

// evento de teclado
void keyPressed() {

  // presione la tecla q para salir
  if (key == 'q') {
    exit();
  }
}
