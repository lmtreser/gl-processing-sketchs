/*
  Uso de botones y eventos mouse
*/

function setup() {
  createCanvas(400, 400);
  var boton = createButton("Enviar");
  boton.position(100, 100);
  boton.mousePressed(evento);
}

function draw() {
  background(220);
}

function evento(){
  print("Botón presionado");
}