/*
    Un objeto es un conjunto de variables y funciones relacionadas. En el contexto
    de los objetos, una variable se llama propiedad (o variable de instancia) y
    una función se llama método.

    Para decirlo de otra manera, un objeto combina datos relacionados (propiedades)
    con acciones y comportamientos relacionados (métodos). La idea es agrupar datos
    y métodos relacionados que pueden operar sobre datos.
*/

// Definir una función 'constructor'
// Una función constructor es la especificación de un objeto
// Usamos la palabra reservada 'this' para referirnos al objeto actual
function RoboTito(tempX, tempY, tempDiametro, tempColor) {

    // Propiedades
    this.x = tempX;
    this.y = tempY;
    this.diametro = tempDiametro;
    this.velocidad = 2.5; // El mismo valor para cada instancia
    this.color = tempColor;

    // Métodos
    // Crear una variable de instancia y luego asígnarle como valor la función
    this.mover = function() {
        this.x += random(-this.velocidad, this.velocidad);
        this.y += random(-this.velocidad, this.velocidad);
    };

    this.mostrar = function() {
        fill(this.color);
        ellipse(this.x, this.y, this.diametro, this.diametro);
    };

    // Método que recibe un paramétro, si no se pasa tiene uno por defecto
    this.consola = function(textual = 'Sin Nombre') {
        this.texto = textual;
        console.log('Hola soy el robot ' + this.texto);
    }

}

let robot;

function setup() {

    createCanvas(400, 400);

    // Crear objetos pasando los parámetros
    robot = new RoboTito(width / 2, height / 2, 20, '#FF0000');
    jit = new RoboTito(width * 0.33, height / 2, 50, '#00FF00');
    bug = new RoboTito(width * 0.66, height / 2, 10, '#0000FF');

    robot.consola();
    jit.consola('Felix');
    bug.consola('Carlos');
}

function draw() {
    background(220);

    robot.mostrar();
    jit.mostrar();
    bug.mostrar();

    robot.mover();
    jit.mover();
    bug.mover();
}