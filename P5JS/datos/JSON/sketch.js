/*
  El formato JSON (JavaScript Object Notation) es otro sistema común para almacenar
  datos. Se necesita un poco de puntuación para separar los elementos. Se usan comas
  entre cada par de datos y llaves para encapsular. Los datos definidos dentro de las
  llaves son un objeto JSON.
  Para añadir otra objeto, se usa un par de corchetes en el comienzo y el final del 
  archivo JSON para significar que los datos son un arreglo de objetos JSON. Cada 
  objeto es separado por una coma. 
  
  https://developer.mozilla.org/es/docs/Learn/JavaScript/Objects/JSON
  https://p5js.org/es/reference/#/p5/loadJSON

  Por ejemplo:
  
  [
    {
      "title": "Alphaville",
      "director": "Jean-Luc Godard",
      "year": 1965,
      "rating": 9.1
    },
    {
      "title": "Pierrot le Fou",
      "director": "Jean-Luc Godard",
      "year": 1965,
      "rating": 7.3
    }
  ]
*/

let pelicula;
let arreglo;

function preload() {
    pelicula = loadJSON("/assets/films.json");
    arreglo = loadJSON("/assets/masfilms.json");
}

function setup() {

    // Leer un archivo json simple
    let titulo = pelicula.title;
    let dir = pelicula.director;
    let periodo = pelicula.year;
    let calificacion = pelicula.rating;
    print("Film #1: " + titulo + " por " + dir + ", " + periodo +
        ". Calificación: " + calificacion);

    // Leer un arreglo de datos json
    let titulo2 = arreglo[0].title;
    let dir2 = arreglo[0].director;
    let periodo2 = arreglo[0].year;
    let calificacion2 = arreglo[0].rating;
    print("Film #2: " + titulo2 + " por " + dir2 + ", " + periodo2 +
        ". Calificación: " + calificacion2);

}

function draw() {
    background(220);
}