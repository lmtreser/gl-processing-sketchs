/*  Instaciación
    Crear una instancia de p5, que mantiene todas las variables fuera del 
    scope global de tu página. 
*/

let sketch = function (p) {
  let x = 100;
  let y = 100;

  p.setup = function () {
    p.createCanvas(400, 400);

  };

  p.draw = function () {
    p.background(0);
    p.fill(255);
    p.rect(x, y, 50, 50);
  };
};

let myp5 = new p5(sketch);