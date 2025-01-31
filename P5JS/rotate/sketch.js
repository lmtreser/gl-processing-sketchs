/*  ROTATE
    Rota una figura según el monto especificado por el parámetro ángulo. 
    Esta función toma en cuenta el modo de ángulo definido por angleMode(), 
    así que los ángulos pueden ser ingresados en radianes o grados. 
    Los objetos son siempre rotados según su posición relativa al origen y los
    números positivos rotan en la dirección de las manecillas del reloj. 
*/

let contador = 0;

function setup() {
  createCanvas(400, 400);
  angleMode(DEGREES);
}

function draw() {

  background(220);
  contador += 1;
  translate(width / 2, height / 2);
  rect(-26, -26, 52, 52);
  translate(50, 50);
  rotate(45 + contador);
  rect(-26, -26, 52, 52);

}
