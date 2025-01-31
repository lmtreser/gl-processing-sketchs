/*  P5.JS + Google Firebase
    Programación Domótica II
    25 de agosto de 2021
*/

// variables
let tiempo = 0;
let contador = 0;

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
    textAlign(CENTER);
    textSize(32);
    text('¡Hola Google Firebase!', width / 2, height / 2);

    // actualización cada 5 segundos
    if (millis() > tiempo + 2000) {
        tiempo = millis();
        contador++;

        // Detecta eventos de valores
        // Leer y detectar cambios en el contenido de una ruta de acceso con once()
        const dbRef1 = firebase.database().ref();
        dbRef1.child('Domotica/02 General/Humedad').once('value').then((snapshot) => {
            let datos = snapshot.val();
            console.log("once(): ", datos);
        }
        );

        // Lee los datos una sola vez
        // Lee datos una vez con get()
        const dbRef2 = firebase.database().ref();
        dbRef2.child("Domotica").get().then((snapshot) => {
            if (snapshot.exists()) {
                let datos = snapshot.val();
                console.log("get(): ", datos);
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
