/* INTRODUCCIÓN A LA BIBLIOTECA P5.JS
   Lucas Martín Treser - Agosto de 2021
 */

function setup() {
  // creación del canvas, ancho x alto
  createCanvas(640, 480);
}


function draw() {

  // color de fondo
  background('#0F7193');

  // color del borde
  stroke('#E01433');

  // ancho del borde en píxels
  strokeWeight(5);

  // relleno
  fill('#25F24C');

  // punto, x, y
  point(50, 50);

  // línea, x1, y1, x2, y2
  line( 80, 80, 400, 400);

  // elipse, x, y, ancho, alto
  ellipse(200, 200, 50, 60);

  // rectángulo, x, y, ancho, alto
  rect (450, 300, 80, 100);

}
