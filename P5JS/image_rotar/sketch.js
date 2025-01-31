/*  Uso de imagenes
*/

let imagen;
let rotar = 0;

function preload() {
  imagen = loadImage('assets/batman.png');
}
function setup() {
  createCanvas(600, 600);
  angleMode(DEGREES);
}

function draw() {

  background(75);
  rotar += 2;
  translate(width / 2, height / 2);
  rotate(rotar);
  imageMode(CENTER);
  image(imagen, 0, 0, 555, 325);
}