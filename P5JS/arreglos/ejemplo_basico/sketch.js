/* Un arreglo es una lista de variables que comparten el mismo nombre. 
   Los arreglos son útiles porque hacen posible trabajar con más variables
   sin crear un nombre nuevo para cada una.
*/

var x = []; // Declara el arreglo
var y = [12, 2]; // Declara y asigna

function setup() {
    createCanvas(200, 200);
    x[0] = 10; // Asigna el primer valor
    x[1] = 4; // Asigna el segundo valor

    // Mostrar valores
    print("El contenido de X1 es: ", x[1]);
    print("El contenido de Y0 es: ", y[0]);

}

function draw() {
    background(220);
}