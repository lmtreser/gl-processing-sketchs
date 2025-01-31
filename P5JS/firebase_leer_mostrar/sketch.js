/*  P5.JS + Google Firebase
    Programación Domótica II
    25 de agosto de 2021
*/

// variables
let tiempo = 0;
let contador = 0;
let datos = 0;

function setup() {

    createCanvas(windowWidth, windowHeight);
    frameRate(60);

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

    // estilos
    background(200, 193, 198);
    fill(229, 23, 85, 100);
    stroke('#4D1A29');
    textStyle(BOLD);
    textAlign(LEFT);
    textSize(32);

    // Mostrar texto conviertiendo el objeto a un array: 
    // Object.keys(), Object.values(), y Object.entries().
    // También es posible convertirlo a un string con JSON.stringify(datos)
    for (var i = 0; i < 3; i++) {
        let entradas = Object.keys(datos);
        let valores = Object.values(datos);
        let unidades = [' %', ' ppm', ' °C'];
        text(entradas[i] + ': ' + valores[i] + unidades[i], 300, 200 + (i * 35));

    }

    // actualización cada 5 segundos
    if (millis() > tiempo + 5000) {
        tiempo = millis();
        contador++;

        // Lee datos una vez con get()
        const dbRef2 = firebase.database().ref();
        dbRef2.child("Domotica").child("02 General").get().then((snapshot) => {
            if (snapshot.exists()) {
                datos = snapshot.val();
                console.log(datos);
            } else {
                console.log("No hay datos disponibles");
            }
        }).catch((error) => {
            console.error(error);
        });

    }

}

// Modificar el tamaño del canvas si la ventana cambia de tamaño
function windowResized() {
    resizeCanvas(windowWidth, windowHeight);
}
