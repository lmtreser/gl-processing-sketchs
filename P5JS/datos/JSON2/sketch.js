/*
    Visualiza datos a partir de un archivo JSON
*/

var peliculas = [];
var datosPelicula;

function preload() {
    datosPelicula = loadJSON("/assets/films.json");
}

function setup() {
    createCanvas(480, 120);
    for (var i = 0; i < datosPelicula.length; i++) {
        var o = datosPelicula[i];
        peliculas[i] = new Film(o);
    }
    noStroke();
}

function draw() {
    background(0);
    for (var i = 0; i < peliculas.length; i++) {
        var x = i * 32 + 32;
        peliculas[i].mostrar(x, 105);
    }
}

function Film(f) {
    this.titulo = f.title;
    this.director = f.director;
    this.periodo = f.year;
    this.calificacion = f.rating;
    this.mostrar = function(x, y) {
        var calificacionGris = map(this.calificacion,
            6.5, 8.1, 102, 255);
        push();
        translate(x, y);
        rotate(-QUARTER_PI);
        fill(calificacionGris);
        text(this.titulo, 0, 0);
        pop();
    };
}