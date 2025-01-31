client = new Paho.MQTT.Client("broker.shiftr.io", Number(443), "controlpanel");
client.onConnectionLost = onConnectionLost;

let messageSent = "";
let keyboardChannel= "/1234"  

function setup() {
  createCanvas(200, 200);

  client.connect({
    onSuccess: onConnect,
    userName: "mlSchool",
    password: "380eda76b9b1d2df",
    useSSL: true,
  });

  textAlign(CENTER);
}

function draw() {
  background(220);
  text("sending messages to "+keyboardChannel, width / 2, 20);
  text(messageSent, width / 2, height / 2);
}


function keyPressed() {
  sendMessage( "a");
}

function onConnect() {
  // Once a connection has been made, send a message.
  console.log("connected to mosquitto");
  setInterval(sendRandomMsg, 10);
}

function onConnectionLost(responseObject) {
  if (responseObject.errorCode !== 0) {
    console.log("onConnectionLost:" + responseObject.errorMessage);
  }
}

function sendMessage( m) {
  messageSent=m;
  console.log("sending: "+ m);

  let message = new Paho.MQTT.Message(m);
  message.destinationName = keyboardChannel;
  client.send(message);
}

function sendRandomMsg() {
  let r = floor(random(0, 10));
  switch (r) {
    case 0:
      sendMessage( "UP");
      break;
    case 1:
      sendMessage( "DOWN");
      break;
    case 2:
      sendMessage( "RIGHT");
      break;
    case 3:
      sendMessage( "LEFT");
      break;
    case 4:
      sendMessage( "ENTER");
      break;
    case 5:
      sendMessage( "SPACE");
      break;
    case 6:
    case 7:
    case 8:
    case 9:
      let c = String.fromCharCode(random(33, 127));
      sendMessage(c);
      break;
  }


}