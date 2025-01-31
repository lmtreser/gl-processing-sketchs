/*
  Longitud de un arreglo
  El bucle for, introducido en Repetición, hará más fácil trabajar con arreglos grandes
  mientras el código se mantiene conciso. La idea es escribir un bucle para recorrer 
  cada elemento del arreglo, uno a uno. Para hacerlo, necesitarás saber el largo del 
  arreglo. La propiedad length asociada con cada arreglo almacena el número de elementos.
  Usamos el nombre del arreglo con el operador punto (un punto) para acceder a este valor.
*/

let gris = [];

function setup() {
    createCanvas(240, 120);

    let x = [12, 20]; // Declara y asigna valores al arreglo
    print(x.length); // Imprime 2 en la consola

    let y = ["gato", 10, false, 50];
    print(y.length); // Imprime 4 en la consola

    let z = []; // Declara un arreglo vacío
    print(z.length); // Imprime 0 en la consola
    z[0] = 20; // Asigna un elemento al arreglo
    print(z.length); // Imprime 1 en la consola
    z[1] = 4; // Asigna un elemento al arreglo
    print(z.length); // Imprime 2 en la consola

    // Carga valores aleatorios en un arreglo vacío
    for (var i = 0; i < width; i++) {
        gris[i] = random(0, 255);
    }
}

function draw() {
    background(204);

    // Dibuja lineas de acuerdo a la cantidad de elementos del arreglo gris[]
    for (var i = 0; i < gris.length; i++) {
        stroke(gris[i]);
        line(i, 0, i, height);
    }
}