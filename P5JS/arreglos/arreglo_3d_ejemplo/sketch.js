/*  Ejemplo práctico de un array de 3 dimensiones. Vamos a crear una 
    agenda de 1 año, en cada año metemos 12 meses, en cada mes 31 días
    y en cada día 24 horas. En cada hora podemos meter un evento.
    Necesitamos un array de 3 dimensiones, es decir, un array para los
    12 meses, en cada mes un array de 31 días, y en cada día un array
    de 24 horas.
    https://tutobasico.com/multidimensionales-javascript/
*/

// Declaramos el array
let agenda = new Array(12);
// Recorrerlo para meter en cada posición un array de 31
for (let i = 0; i < agenda.length; i++) {
    agenda[i] = new Array(31);
    // Lo recorremos para meter en cada posición un array de 24
    for (let j = 0; j < agenda[i].length; j++) {
        agenda[i][j] = new Array(24);
    }
}

/*  El array de 3 dimensiones está creado, pero vacío, si intentamos
    acceder a una posición el resultado será "undefined". Podemos crear
    eventos y guardarlos en su posición. Meses de 1 al 12, Días del 1 
    al 31 y horas de 0 a 23. Hay que tener en cuenta que si creamos un
    array de 12 posiciones para los meses, lo que creamos es un array
    que va desde 0 hasta 11, y pasa lo mismo con el de los días, que 
    irá desde 0 hasta 30. Entonces a la hora de introducir los datos 
    vamos a tener que restarle 1 a los meses y a los días
*/

// Vamos a introducir (Concierto, mes 4, día 23, hora 19)
agenda[3][22][18] = "Concierto";

// Para acceder a un dato te la agenda realizaremos la misma operación
// Queremos saber que evento hay el mes 6, día 3 a las 22 horas
let evento = agenda[5][2][22];

// Imaginemos que queremos imprimir toda la agenda
for (let i = 0; i < agenda.length; i++) {
    for (let j = 0; j < agenda[i].length; j++) {
        for (let k = 0; k < agenda[i][j].length; k++) {
            console.log("Evento:", agenda[i][j][k], ", Mes:", (i + 1),
                ", Día:", (j + 1), ", Hora:", k);
        }
    }
}