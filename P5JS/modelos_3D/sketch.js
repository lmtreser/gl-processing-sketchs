
let objeto;
let textura;

function preload() {
  objeto = loadModel('models/microondas.obj', true);
  textura = loadImage('textures/mw_tex.jpg');
}


function setup() {
  createCanvas(800, 800, WEBGL);
}


function draw() {

  background(23, 17, 62);
  stroke(0);
  strokeWeight(0);
  orbitControl(5);
  rotateZ(PI);
  scale(5);
  
//  normalMaterial(255);
  
  model(objeto);
  texture(textura);
}
