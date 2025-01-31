/*
  Ajustar el tamaño del Canvas de acuerdo al contenedor
  Septiembre de 2021

  Es posible saber el tamaño de un contenedor usando los valores clientWidth y clientHeight
   para obtener el ancho y alto correspondientes.

*/

let contenedor;

function setup() {

  contenedor = document.getElementById("izquierda");
  var canvas = createCanvas(contenedor.clientWidth, contenedor.clientHeight);
  canvas.parent('izquierda'); // etiqueta contenedora del canvas

}

function draw() {

  background(0, 0, 255);

  // mostrar texto
  fill(255);
  textAlign(LEFT);
  textStyle(BOLD);
  textSize(32);
  text("ANCHO: " + contenedor.clientWidth, 100, 100);
  text("ALTO: " + contenedor.clientHeight, 100, 150);

}