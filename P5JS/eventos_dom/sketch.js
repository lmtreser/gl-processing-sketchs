/* EVENTOS EN P5.JS
   Elementos DOM y uso del mouse
*/

var entrada;
var boton;

function setup() {

    createCanvas(480, 120);
    entrada = createInput("INGRESA TU NOMBRE");
    entrada.position(20, 30);
    entrada.mousePressed(clearInp);
    boton = createButton("enviar");
    boton.position(270, 30);
    boton.mousePressed(dibujarNombre);
    background(100);
    noStroke();

}

function draw() {

}

function clearInp(){
    entrada.value("");
}

function dibujarNombre() {
    background(100);
    textSize(30);
    var nombre = entrada.value();
    for (var i = 0; i < 30; i++) {
        fill(random(255));
        text(nombre, random(width), random(height));
    }
    entrada.value("");
}