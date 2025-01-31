/*  P5.JS + Google Firebase
    Programación Domótica II
    25 de agosto de 2021
*/

// variables
let tiempo = 0;
let contador = 0;
let datos;

function setup() {

    createCanvas(400, 400);
    frameRate(60);

    // creación de un botón
    boton = createButton("LUZ");
    boton.size(80, 80);
    boton.style('color : #6354C4');
    boton.position(100, 100);
    boton.mousePressed(presionado);

    const firebaseConfig = {
        apiKey: "",
        authDomain: "",
        databaseURL: "",
        projectId: "",
        storageBucket: "",
        messagingSenderId: "",
        appId: ""
    };
    firebase.initializeApp(firebaseConfig);
    console.log(firebase);
}

function draw() {

    background(200, 193, 198);

    // Dibujo el indicador de encendido
    strokeWeight(0);
    ellipse(width / 2, height / 2, 100, 100);

}

function presionado() {

    // Leer la base de datos
    const dbRef = firebase.database().ref();
    dbRef.child('Domotica/03 Cocina/Iluminacion').once('value').then((snapshot) => {
        datos = snapshot.val();
        console.log(datos);
    });

    // Escribo en la base de datos
    if (datos == 'true') {
        dbRef.child('Domotica/03 Cocina/Iluminacion').set('false');
        fill(0);
    }
    else {
        dbRef.child('Domotica/03 Cocina/Iluminacion').set('true');
        fill(255, 255, 0);
    }
}
