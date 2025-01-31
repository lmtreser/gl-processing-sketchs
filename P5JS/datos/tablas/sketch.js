/*
    Las tablas son matrices de celdas. Las filas son elementos verticales
    y las columnas son horizontales. Los datos pueden ser leídos desde celdas 
    individuales, filas y columnas.

    Los datos en tablas son usualmente almacenados en archivos de texto planos
    con columnas usando comas o tabulación. Un archivo del tipo CSV usa la extensión 
    de archivo .csv. Cuando se usa tabulación, se puede usar la extensión .tsv.

    https://p5js.org/es/reference/#/p5.Table

    Métodos:

    >> getRowCount() devuelve el número de filas
    >> get() accede a los datos de la tabla. Posee dos parámetros: el primero es la fila a leer y el
        segundo es la columna.
*/

let estadisticas;

// Cargar el archivo de tabla, el parámetro "header" toma la primera fila como encabezado
function preload() {
    estadisticas = loadTable("/assets/ortiz.csv", "header");
}

function setup() {
    createCanvas(400, 400);

    for (let i = 0; i < estadisticas.getRowCount(); i++) {
        // Obtiene el valor de la fila i, columna 0 del archivo
        let periodo = estadisticas.get(i, 0);
        // Obtiene el valor de la fila i, columna 1
        let homeRuns = estadisticas.get(i, 1);
        let rbi = estadisticas.get(i, 2);
        let promedio = estadisticas.get(i, 3);
        print(periodo, homeRuns, rbi, promedio);
    }

}

function draw() {
    background(220);
}