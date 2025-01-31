/* Arduino y Processing - Lectura de entradas
 2021. www.automatismos-mdq.com.ar
 */

import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

// variables para almacenar colores
color off = color(190, 166, 193);
color on = color(62, 68, 155);

void setup() {
  size(400, 400);

  // Modificar esta linea colocando el puerto donde está conectado Arduino.
  arduino = new Arduino(this, "/dev/ttyUSB0", 57600);

  // Configurar el pin 8 como entrada digital.
  arduino.pinMode(8, Arduino.INPUT);
}

void draw() {
  
  background(off);
  stroke(on);

  // De acuerdo al estado del pin 8 relleno el cuadrado con un color u otro.
  if (arduino.digitalRead(8) == Arduino.LOW) {
    fill(on);
  } else {
    fill(off);
  }

  rect(20,20,100,100);
  
  // Dibujo los botones, cuadrado para entrada digital y circulo para entrada analógica.

  int ancho = arduino.analogRead(0) / 4;
  int alto = arduino.analogRead(0) / 4;
  fill(on);
  textSize(20);
  text("Lectura analógica: " + ancho, 100, 380);
  noFill();
  ellipse(200, 200, ancho, alto);
}
