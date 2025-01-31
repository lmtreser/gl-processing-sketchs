/*  SCALE
    Aumenta o decrementa el tamaño de una figura por medio de expandir o 
    contraer sus vértices. Los objetos siempre escalan desde su origen 
    relativo al sistema de coordenadas. Los valores de escalamiento son 
    porcentajes decimales.
*/

let contador = 0;

function setup() {
  createCanvas(400, 400);
}

function draw() {

  background(100);
  fill(100);
  rect(30, 20, 50, 50);
  scale(0.5);
  noFill();
  rect(30, 20, 50, 50);

}
