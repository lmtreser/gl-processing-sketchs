/*
 COMUNICACIÓN NAVEGADOR + ARDUINO
 Tecnologías: node.js, p5.js, Arduino, html+css
 Miércoles 18 de agosto de 2021

 Es necesario ejecutar el servidor p5.serialport para poder acceder
 al puerto serie y comunicarse con la placa Arduino.

 */

let serial;

function setup() {

  createCanvas(windowWidth, windowHeight);
  background('#7FB3E0');
  frameRate(60);

  serial = new p5.SerialPort(); // Instantiate our SerialPort object
  let portlist = serial.list(); // Let's list the ports available

  // Assuming our Arduino is connected, let's open the connection to it
  // Change this to the name of your arduino's serial port
  serial.open("/dev/ttyACM0");

  // Register some callbacks
  serial.on('connected', serverConnected); // When we connect to the underlying server
  serial.on('list', gotList); // When we get a list of serial ports that are available
  //serial.on('data', gotData); // When we some data from the serial port
  serial.on('error', gotError); // When or if we get an error
  serial.on('open', gotOpen); // When our serial port is opened and ready for read/write
}

// We are connected and ready to go
function serverConnected() {
  print("Estamos conectados!");
}

// Got the list of ports
function gotList(thelist) {
  // theList is an array of their names
  for (let i = 0; i < thelist.length; i++) {
    // Display in the console
    print(i + " " + thelist[i]);
  }
}

// Connected to our serial device
function gotOpen() {
  print("Puerto Serial abierto!");
}

// Ut oh, here is an error, let's log it
function gotError(theerror) {
  print(theerror);
}

// There is data available to work with from the serial port
function gotData() {
  let currentString = serial.readStringUntil("\r\n");
  console.log(currentString);
}

// Methods available
// serial.read() returns a single byte of data (first in the buffer)
// serial.readChar() returns a single char 'A', 'a'
// serial.readBytes() returns all of the data available as an array of bytes
// serial.readBytesUntil('\n') returns all of the data available until a '\n' (line break) is encountered
// serial.readString() retunrs all of the data available as a string
// serial.readStringUntil('\n') returns all of the data available as a tring until a (line break) is encountered
// serial.last() returns the last byte of data from the buffer
// serial.lastChar() returns the last byte of data from the buffer as a char
// serial.clear() clears the underlying serial buffer
// serial.available() returns the number of bytes available in the buffer

function draw() {

  if (serial.available() > 0) {
    background('#7FB3E0');
    let dato = serial.readStringUntil("\r\n");
    let datosPartidos = split(dato, ',');
    noStroke();
    fill('#F71692');
    ellipse(windowWidth / 2, windowHeight / 2, datosPartidos[0], datosPartidos[1]);
  }
}
