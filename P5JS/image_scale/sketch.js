/*  Uso de imagenes, escalado.
*/

let imagen;
let escalar = 0;

function preload() {
  imagen = loadImage('assets/batman.png');
}
function setup() {
  createCanvas(600, 600);
  angleMode(DEGREES);
}

function draw() {
  background(75);
  escalar += .005;
  translate(width / 2, height / 2);
  scale(escalar);
  imageMode(CENTER);
  image(imagen, 0, 0, 555, 325);
}