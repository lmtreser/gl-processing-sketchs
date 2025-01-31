/*
  Funciones para el manejo de arreglos
  https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array
*/

// Crear un arreglo
let fruits = ['Manzana', 'Banana', 'Pera'];
console.log(fruits.length);

// Acceder a un item del arreglo usando el indice
let first = fruits[0];
let last = fruits[fruits.length - 1];
console.log(first);
console.log(last);

// Bucle sobre un arreglo
fruits.forEach(function(item, index, array) {
    console.log(item, index);
})

// Agregar un item al final del arreglo
fruits.push('Naranja');
console.log(fruits);

// Remover un item desde el final del arreglo
fruits.pop(); // remueve Naranja
console.log(fruits);

// Remover un item desde el principio del arreglo
fruits.shift();
console.log(fruits);

// Agregar un item al principio del arreglo
fruits.unshift('Frutilla');
console.log(fruits);

// Encontrar el indice de un item en el arreglo
let pos = fruits.indexOf('Banana');
console.log(pos);

// Remover un item por la posición
fruits.splice(pos, 1);
console.log(fruits);

// Remover items desde una posición
let vegetables = ['Lechuga', 'Rucula', 'Acelga', 'Espinaca'];
console.log(vegetables);
let posicion = 1;
let cantidad = 2;
let removedItems = vegetables.splice(posicion, cantidad);
console.log(vegetables);
console.log(removedItems);

// Copiar un arreglo
fruits.push('Mandarina', 'Manzana', 'Uva', 'Pomelo')
let copiaFrutas = fruits.slice();
console.log('copiaFrutas: ', copiaFrutas);

// Copiar una porción de un arreglo indicando el inicio
let start = 3;
let masFrutas = fruits.slice(start);
console.log('masFrutas: ', masFrutas);

// Copiar una porción de un arreglo indicando el inicio y el final
let end = 5;
let menosFrutas = fruits.slice(start, end);
console.log('menosFrutas: ', menosFrutas);

// Ordenar los elementos de un arreglo
let orden = masFrutas.sort();
console.log(masFrutas);

// Ordena aleatoriamente los elementos de un arreglo (sólo P5.JS)
function setup() {
    let newArr = shuffle(masFrutas);
    console.log('masFrutas ordenado:', masFrutas);
    console.log('masFrutas desordenado:', newArr);
}