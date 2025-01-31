
const int DELAY_MS = 10;
const int POTE_TAMANIO = A0;
const int POTE_COLOR = A1;

int lastValOne = -1;
int lastValTwo = -1;

void setup() {

  Serial.begin(9600);

}

void loop() {

  int datoUno = analogRead(POTE_TAMANIO);
  int datoDos = analogRead(POTE_COLOR);

  if (lastValOne > datoUno + 2 || lastValOne < datoUno - 2) {
    Serial.print(datoUno);
    Serial.print(",");
    Serial.println(datoDos);
  }

  if (lastValTwo > datoDos + 2 || lastValTwo < datoDos - 2) {
    Serial.print(datoUno);
    Serial.print(",");
    Serial.println(datoDos);
  }

  lastValOne = datoUno;
  lastValTwo = datoDos;
  delay(DELAY_MS);
}
