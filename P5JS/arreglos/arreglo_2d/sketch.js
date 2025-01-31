/*  Arreglos de dos dimensiones. Un arreglo de dos dimensiones no es más 
    que un arreglo dentro de otro, es decir, un arreglo de arreglo.
    https://tutobasico.com/multidimensionales-javascript/
*/

/*1************************************************************************/

// Creamos un array y en cada posición guardamos un nuevo array
let arreglo = new Array(2);
arreglo[0] = new Array(2);
arreglo[1] = new Array(2);

// Ingreso de datos en cada posición
arreglo[0][0] = 25;
arreglo[0][1] = 12;
arreglo[1][0] = 34;
arreglo[1][1] = 6;

// Accedemos a la fila 0, columna 1
let datos = arreglo[0][1];
console.log("1. Acceso a un array bidimensional: ", datos);

/* El resultado sería algo como:

        Tabla 	Columna  0 	        Columna 1
        Fila 0 	posición 0,0 = 25 	posición 0,1 = 12
        Fila 1 	posición 1,0 = 34 	posición 1,1 = 6
*/

/*1************************************************************************/

/*2************************************************************************/

/* Aunque se pueden crear arrays bidimensionales de manera manual como
   en el ejemplo anterior, lo normal es hacerlo mediante bucles. 
*/

// Declaración de un array de 10 posiciones
let arrayDiez = new Array(10);
// Bucle para meter en cada posición otros array de 10
for (let i = 0; i < 10; i++) {
    arrayDiez[i] = new Array(10);
}
arrayDiez[9][9] = 33;
console.log("2. Array generado por bucle for: ", arrayDiez[9][9]);

/*2************************************************************************/

/*3************************************************************************/

/* Recorrer un Array de 2 dimensiones. Si para recorrer un array de una
   posición utilizábamos un bucle for, haremos lo mismo pero usando dos
   bucles for, uno dentro de otro.
*/

// Bucle que recorre el primer array
for (let i = 0; i < 10; i++) {
    // Bucle que recorre el array que está en la posición i
    for (let j = 0; j < 10; j++) {
        console.log("3. Recorrer el array mediante un bucle for: ",
            arrayDiez[i][j]);
    }
}

/*3************************************************************************/

/*4************************************************************************/

/* En el ejemplo anterior sabemos que se trata de un array bidimensional 
   de 10×10, pero puedo que no conozcamos el tamaño del array. Veamos un 
   ejemplo utilizando el método length.
*/

// Bucle que recorre el primer array
for (let i = 0; i < arrayDiez.length; i++) {
    // Bucle que recorre el array que está en la posición i
    for (var j = 0; j < arrayDiez[i].length; j++) {
        console.log("4. Usar el método length: ", arrayDiez[i][j]);
    }
}

/*4************************************************************************/