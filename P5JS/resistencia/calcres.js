// paleta de colores
let colores = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'purple', 'grey', 'white', 'silver', 'gold'];
let b1 = 10;
let b2 = 0;
let b3 = 0;
let tolerancia = 5;

function setup() {

  // configuro el lienzo
  createCanvas(500, 600);
  background(255, 255, 255);

  // texto
  textSize(18);
  textAlign(CENTER);
  text(b1 + "" + b2 + "" + b3 + " Ω " + "±" + tolerancia + "%", 250, 108);

  // cuerpo de la resistencia
  fill(100, 100, 100, 50);
  stroke(100, 100, 100);
  rect(100, 45, 50, 10);
  rect(350, 45, 50, 10);
  rectMode(CENTER);
  strokeWeight(2);
  stroke(217, 181, 118);
  fill(217, 181, 118, 127);
  rect(250, 50, 200, 50, 18, 18, 18, 18);  

  // banda 1
  noStroke();
  rectMode(CORNER);
  fill(colores[1]);
  rect(200, 25, 10, 49);
  // banda 2
  fill(colores[0]);
  rect(220, 25, 10, 49);
  // banda 3
  fill(colores[2]);
  rect(240, 25, 10, 49);
  // banda 4
  fill(colores[11]);
  rect(280, 25, 10, 49);

  let ye = 140;
  strokeWeight(2);
  stroke('darkslategrey');
  for (let i=0; i<10; i++) {
    fill(colores[i]);
    ellipse(160, ye, 30, 30);
    ye = ye+ 35;
  }
  ye = 140;
  for (let i=0; i<10; i++) {
    fill(colores[i]);
    ellipse(220, ye, 30, 30);
    ye = ye+ 35;
  }
  ye = 140;
  for (let i=0; i<12; i++) {
    fill(colores[i]);
    ellipse(280, ye, 30, 30);
    ye = ye+ 35;
  }
  ye = 140;
  for (let i=0; i<12; i++) {
    fill(colores[i]);
    ellipse(340, ye, 30, 30);
    ye = ye+ 35;
  }
}

function draw() {
}

// cuando el usuario hace clic
function mousePressed() {

  // revisar si el mouse está dentro de algún círculo de la primer banda
  let ye = 140;
  for (let i = 0; i<10; i++) {
    let d = dist(mouseX, mouseY, 160, ye);
    if (d < 15) {
      noStroke();
      rectMode(CORNER);
      fill(colores[i]);
      rect(200, 25, 10, 49);
      b1=i;
    }
    ye = ye + 35;
  }

  // revisar si el mouse está dentro de algún círculo de la segunda banda
  ye = 140;
  for (let i = 0; i<10; i++) {
    let d = dist(mouseX, mouseY, 220, ye);
    if (d < 15) {
      noStroke();
      rectMode(CORNER);
      fill(colores[i]);
      rect(220, 25, 10, 49);
      b2=i;
    }
    ye = ye + 35;
  }

  // revisar si el mouse está dentro de algún círculo de la tercera banda
  ye = 140;
  for (let i = 0; i<12; i++) {
    let d = dist(mouseX, mouseY, 280, ye);
    if (d < 15) {
      noStroke();
      rectMode(CORNER);
      fill(colores[i]);
      rect(240, 25, 10, 49);

      switch(i) {
      case 0: 
        b3 = 1;
        break;
      case 1: 
        b3 = 10;
        break;
      case 2: 
        b3 = 100;
        break;
      case 3: 
        b3 = 1000;
        break;
      case 4: 
        b3 = 10000;
        break;
      case 5: 
        b3 = 100000;
        break;
      case 6: 
        b3 = 1000000;
        break;
      case 7: 
        b3 = 10000000;
        break;
      case 8: 
        b3 = 100000000;
        break;
      case 9: 
        b3 = 1000000000;
        break;
      case 10: 
        b3 = 0.01;
        break;
      case 11: 
        b3 = 0.1;
        break;
      }
    }
    ye = ye + 35;
  }

  // revisar si el mouse está dentro de algún círculo de la cuarta banda
  ye = 140;
  for (let i = 0; i<12; i++) {
    let d = dist(mouseX, mouseY, 340, ye);
    if (d < 15) {
      noStroke();
      rectMode(CORNER);
      fill(colores[i]);
      rect(280, 25, 10, 49);
      tolerancia = i;
    }
    ye = ye + 35;
  }

  // borro texto
  fill(255, 255, 255);
  rectMode(CENTER);
  rect(250, 108, 500, 30);
  // texto
  fill(0, 0, 0);
  textSize(18);
  textAlign(CENTER);
  let valor = ((b1*10)+(b2*1))*(b3);
  if (valor < 991) {
    text(valor + " Ω " + "±" + tolerancia + "%", 250, 108);
  }
  if (valor > 992 && valor < 990001) {
    valor = valor / 1000;
    text(valor + " kΩ " + "±" + tolerancia + "%", 250, 108);
  }
  if (valor > 990001) {
    valor = valor / 1000000;
    text(valor + " MΩ " + "±" + tolerancia + "%", 250, 108);
  }
}
