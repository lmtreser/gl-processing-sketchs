
let ladrillos;
let madera;
let home;

function setup() {
  createCanvas(windowWidth, windowHeight, WEBGL);
  createEasyCam();
  home = loadModel('assets/swett.obj');
  madera = loadImage('assets/madera.png');
  ladrillos = loadImage('assets/ladrillo.png');
}

function draw() {
  background(100);
  model(home);
  translate(0, 0, -400);
  texture(ladrillos);
  box(500, 10, 500);

  translate(0, 0, 0);
  texture(madera);
  box(500, 500, 10);
}
