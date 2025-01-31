// Recorrer un arreglo

var x = [];

function setup() {
    createCanvas(240, 120);
    noStroke();
    fill(255, 200);

    // Creación de un arreglo utilizando for
    for (var i = 0; i < 3000; i++) {
        x[i] = random(-1000, 200);
    }
}

function draw() {
    background(0);

    // Dibujar utilizando for y arreglo de datos
    for (var i = 0; i < x.length; i++) {
        x[i] += 0.5;
        var y = i * 0.4;
        arc(x[i], y, 12, 12, 0.52, 5.76);
    }
}