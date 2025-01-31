/* INTRODUCCIÓN A LA BIBLIOTECA P5.JS
   Tamaño del canvas
   Lucas Martín Treser - Agosto de 2021
*/

function setup() {
    createCanvas(windowWidth, windowHeight);
}

function draw() {
    fill(255, 0, 0);
    rect(0, 0, width / 2, height / 2);

    fill(0, 255, 0);
    rect(width / 2, 0, width / 2, height / 2);

    fill(0, 0, 255);
    rect(0, height / 2, width / 2, height / 2);

    fill(255, 255, 0);
    rect(width / 2, height / 2, width / 2, height / 2);
}

function windowResized() {
    resizeCanvas(windowWidth, windowHeight);
}
