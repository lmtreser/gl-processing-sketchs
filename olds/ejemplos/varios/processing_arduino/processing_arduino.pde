/*
CONEXION CON ARDUINO VIA PUERTO SERIE
 */

// importar la libreria para puerto serie
import processing.serial.*;

// crear el objeto Serial
Serial miPuerto; 

// definir variables para almacenar los datos recibidos
int valor1;     
int valor2;

void setup() {
  
  size(300, 300);

  // definir el numero de puerto COM donde esta Arduino
  String portName = Serial.list()[32];
  // definir el puerto y la velocidad de transmisión
  miPuerto = new Serial(this, portName, 9600);
}

void draw() {

  // si llegan datos, utilizarlos
  if (miPuerto.available() > 0) { 
    
    background(#000000);
    
    // leo los datos recibidos y los almacenos
    valor1 = miPuerto.read();        
    valor2 = miPuerto.read();
    
    // muestro en pantalla los valores obtenidos
    textSize(30);
    text(valor1, 125, 100);
    text(valor2, 125, 150);
  }
}
