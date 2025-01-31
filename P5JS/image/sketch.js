/*  Uso de imagenes
    Septiembre 2021
*/

let imagen;

function preload() {
    imagen = loadImage('assets/batman.png');
}

function setup() {
    createCanvas(600, 600);
}

function draw() {

    background(75);
    imageMode(CENTER);
    image(imagen, width / 2, height / 2, 555, 325);
}