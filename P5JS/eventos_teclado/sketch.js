/* EVENTOS EN P5.JS

Teclado

    keyIsPressed
    key
    keyCode
    keyPressed()
    keyReleased()
    keyTyped()
    keyIsDown()

*/

let trazo;

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
    strokeWeight(trazo);

    // dibujar un rectángulo
    if (keyIsPressed == true) {
        fill(0);
    }

    rect(100, 100, width / 4, height / 4);

    // Texto
    textSize(100);
    text(key, 500, 500, 600, 100);

}

// Modificar el tamaño del canvas si la ventana cambia de tamaño
function windowResized() {
    resizeCanvas(windowWidth, windowHeight);
}

// La funcion keyPressed() es llamada cada vez que una tecla es presionada
function keyPressed() {
    if (keyCode == LEFT_ARROW) {
        trazo = 10;
    } else if (keyCode == RIGHT_ARROW) {
        trazo = 0;
    }
}