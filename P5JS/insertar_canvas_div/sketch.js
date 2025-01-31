/*
  Insertar Canvas en etiquetas HTML
  Septiembre de 2021
*/

function setup() {
  var canvas = createCanvas(600, 400);
  canvas.parent('izquierda');

}


function draw() {
  background(7, 234, 24);
  textAlign(CENTER);
  textStyle(BOLD);
  text("Este es el CANVAS de P5.js", width / 2, height / 2)
}

function windowResized() {
  resizeCanvas(width / 2, height / 2);
}
