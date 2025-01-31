/*
   Código que manda números random
   para usar en una aplicación de
   Processing
*/

int valor1 = 0;
int valor2 = 255;

void setup() {
  Serial.begin(9600);
}

void loop() {
  valor1++;
  valor2--;
  delay(150);
  Serial.write(valor1);
  Serial.write(valor2);
  //Serial.println(valor2);
}
