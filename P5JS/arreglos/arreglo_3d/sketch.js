/*  Arrays multidimensionales. Son arrays que, como su nombre indica, 
    tienen más de una dimensión. 
    https://tutobasico.com/multidimensionales-javascript/
*/

/*1************************************************************************/

// Declaramos el primer array
let arrayTres = new Array(10);
// Introducimos un array en cada posición
for (let i = 0; i < arrayTres.length; i++) {
    arrayTres[i] = new Array(10);
}
// Recorremos el primer array
for (let i = 0; i < arrayTres.length; i++) {
    // Recorremos el array de cada posición i
    for (let j = 0; j < arrayTres[i].length; j++) {
        // Creamos un array en cada posición
        arrayTres[i][j] = new Array(10);
    }
}

/*1************************************************************************/

/*2************************************************************************/

// Para recorrer el array anterior de 3 dimensiones haríamos lo siguiente

// Recorremos el primer array
for (let i = 0; i < arrayTres.length; i++) {
    // Recorremos el array de cada posición i
    for (let j = 0; j < arrayTres[i].length; j++) {
        // Recorremos el array de cada posición i j
        for (let k = 0; k < arrayTres[i][j].length; k++) {
            console.log("1. Recorrer un array de 3 dimensiones: ",
                arrayTres[i][j][k]);
        }
    }
}

/*2************************************************************************/

/*3************************************************************************/

/* Se puede complicar todo lo que queramos pero la estructura sigue siendo
   la misma. En el ejemplo anterior, si queremos acceder a una posición 
   en concreto lo podemos hacer directamente
*/

// Indicando los índices de cada dimensión, arrayTres[i][j][k]
arrayTres[3][6][0] = 48;
let dato = arrayTres[3][6][0];
console.log("arrayTres[3][6][0]", dato);

/*3************************************************************************/