/* Simulador electrónica sigue lineas
 Lucas Martín Treser - Febrero 2021
 */

// variables
let sch;
let fuente;
let slider;

function preload() {
  sch = loadImage('assets/circuito.png');
  fuente = loadFont('assets/digital_display_tfb.ttf');
}

function setup() {

  createCanvas(500, 600);

  // fuente digital
  fill('#ED225D');
  textFont(fuente);
  textAlign(CENTER);
  textSize(50);

  // configuración deslizador
  slider = createSlider(50, 200);
  slider.position(155, 450);
  slider.style('width:120px');
}


function draw() {

  // circuito
  image(sch, 0, 0, 458, 450);

  // slider
  noStroke();
  fill(148, 194, 232);
  rect(150, 448, 134, 27);
  let val = slider.value();

  // texto
  stroke(0);
  fill(49, 247, 40);
  text(val, 390, 313);

  // cinta negra
  stroke(49, 247, 40)  ;
  strokeWeight(2);
  fill(0);
  rect(187, val, 15, 180);
}
