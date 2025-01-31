/*
  Insertar Canvas en etiquetas HTML
  Insertar objetos DOM
  Septiembre de 2021

  createButton() creates a DOM element - which is therefore completely separate from 
  the canvas. button.position() just adds some inline styling to the button:

  <button value="undefined" style="position: absolute; left: 0px; top: 0px;">click me</button>
  
  By default position: absolute is relative to the browser window. You could set the position
  of the canvas in the same way and calculate button position based on canvas position; 
  but that's rather inelegant and could lead to problems on pages with other DOM elements.
  A better solution is to put the button in the same container as the canvas and do some 
  CSS 'magic'. Here's an example modifying the example code:
  
  <div id="sketch01" style="position: relative;"> </div>

*/

let press = false;

function setup() {

  var canvas = createCanvas(580, 380);
  canvas.parent('izquierda'); // etiqueta contenedora del canvas
  canvas.position(10, 10);

  boton = createButton("Enviar");
  boton.parent('izquierda');  // etiqueta contenedora del botón
  boton.position((width / 2) - 35, height / 2);
  boton.size(70, 40);
  boton.mousePressed(presionado);

}

function draw() {

  // cambiar el color al pulsar el botón
  if (press == false) {
    background(0, 255, 0);
  }
  else {
    background(255, 0, 0);
  }
  
  // mostrar texto
  textAlign(CENTER);
  textStyle(BOLD);
  textSize(32);
  text("ESTE ES EL CANVAS", width / 2, (height / 2) - 25);

}

function windowResized() {
  resizeCanvas(width / 2, height / 2);
}

function presionado() {
  press = !press;
  console.log(press);
}