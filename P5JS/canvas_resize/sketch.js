/* INTRODUCCIÓN A LA BIBLIOTECA P5.JS
   Tamaño del canvas y otras figuras
   Lucas Martín Treser - Agosto de 2021
*/

function setup() {

    createCanvas(windowWidth, windowHeight);
    //createCanvas(displayWidth, displayHeight);

    // Definir el frameRate
    frameRate(60);
}

function draw() {

    // estilos
    background(200, 193, 198);
    fill(229, 23, 85, 100);
    stroke('#4D1A29');
    strokeWeight(5);

    // dibujar un rectángulo
    rect(100, 100, width / 4, height / 4);

    // dibujar un arco, modos OPEN, CHORD, PIE
    arc(200, 200, 200, 200, radians(0), PI / 2);

    // Dibujar una figura
    beginShape();
    vertex(0, 100);
    vertex(100, 200);
    vertex(100, 100);
    endShape(CLOSE);

    // Texto
    textSize(100);
    text(displayHeight, 500, 500, 600, 100);

    //print("Frames: ", frameCount);
    //print("FPS :", frameRate());

}

// Modificar el tamaño del canvas si la ventana cambia de tamaño
function windowResized() {
    resizeCanvas(windowWidth, windowHeight);
}
