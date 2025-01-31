/*  Instaciación
    Crear una instancia de p5, que mantiene todas las variables fuera del 
    scope global de tu página. 

    https://github.com/processing/p5.js/wiki/Global-and-instance-mode#specifying-parent-html-element
    
*/

// Primera instancia
let sketch0 = function (p) {
  let x = 100;
  let y = 100;

  p.setup = function () {
    // obtener el tamaño del elemento DIV para crear el canvas
    var contenedor = document.getElementById("derecha");
    p.createCanvas(contenedor.clientWidth, contenedor.clientHeight);
  };

  p.draw = function () {
    p.background(0);
    p.fill(0, 0, 255);
    p.rect(x, y, 50, 50);
  };
};

// Segunda instancia
let sketch1 = function (p) {
  let x = 100;
  let y = 0;

  p.setup = function () {
    // obtener el tamaño del elemento DIV para crear el canvas
    var contenedor = document.getElementById("izquierda");
    p.createCanvas(contenedor.clientWidth, contenedor.clientHeight);
  };

  p.draw = function () {
    p.background(0);
    p.fill(255, 0, 0);
    y += 1;
    p.rect(x, y, 50, 50);
  };
};

// Creación de los canvas y ubicación en distintos elementos HTML
let myp5 = new p5(sketch0, 'derecha');
let myp6 = new p5(sketch1, 'izquierda');