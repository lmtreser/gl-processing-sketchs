/*  TRANSLATE
    Especifica una cantidad a desplazar los objetos dentro de la ventana mostrada.
    El parámetro x especifica la traslación de izquierda a derecha, el parámetro y 
    especifica la traslación de arriba a abajo. Las transformaciones son acumulativas
    y aplican a todo lo que ocurre después y llamadas posteriores a la misma función 
    acumulan el efecto.
*/

let contador = 0;

function setup() {
  createCanvas(400, 400);
}

function draw() {

  background(220);
  contador += 1;
  fill(255, 0 , 0, 100);
  rect(0, 0, 55, 55); // Coordenadas (0,0) originales

  // La función push() graba la configuración actual de estilo de dibujo, 
  // y pop() restaura esta configuración.

  push();
  translate(30, 20);
  fill(0, 255, 0, 100);
  rect(0, 0, 55, 55); // Nuevas coordenadas (0,0)
  translate(14, 14);
  fill(0, 0, 255, 100);
  rect(0, 0, 55, 55); // Nuevas coordenadas (0,0)
  pop();

  noFill();
  rect(contador, 10, 55, 55); // Draw rect at original 0,0

}
