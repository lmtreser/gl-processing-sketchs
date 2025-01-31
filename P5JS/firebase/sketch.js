/*  P5.JS + Google Firebase
    25 de agosto de 2021
*/

// variables
let tiempo = 0;
let contador = 0;
let database;
let title;

function setup() {

    createCanvas(windowWidth, windowHeight);
    frameRate(60);

    let firebaseConfig = {
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
    database = firebase.database();

    // lectura desde la base de datos
    let article_id = 5;
    firebase.database().ref('Cocina/' + article_id).once('value').then(
        function (snapshot) {
            title = snapshot.val().Timestamp;
            console.log(title);

        }
    )

}

function draw() {

    // estilos
    background(200, 193, 198);
    fill(229, 23, 85, 100);
    stroke('#4D1A29');
    strokeWeight(5);
    textSize(25);
    text(title, 100, 100);

    // actualización cada 5 segundos
    if (millis() > tiempo + 50000) {
        tiempo = millis();
        contador++;

        let timestamp = new Date();

        const formatDate = (current_datetime) => {
            let formatted_date = current_datetime.getFullYear() + "/" + (current_datetime.getMonth() + 1) +
                "/" + current_datetime.getDate() + " " + current_datetime.getHours() + ":" +
                current_datetime.getMinutes() + ":" + current_datetime.getSeconds();
            return formatted_date;
        }

        let time_id = formatDate(timestamp);

        let article = {
            'Timestamp': time_id,
            'Temperatura 1': contador + 323,
            'Temperatura 2': contador + 645,
            'Humedad 1': contador + 114,
            'Humedad 2': contador + 217,
        }

        firebase.database().ref('Cocina/' + contador).set(article);
    }

}