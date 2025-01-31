//INSERTAR AUTOS
class Auto {
  float x;
  float y;
  color c;
  float tam;
  
  //FUNCION: CONSTRUCTOR (Se llama con el NEW) retorna un CAR
  Auto(float autoX, float autoY) {
    x = autoX;
    y = autoY;
    c = color(random(255), random(255),random(255));
    tam = random(40);  
}
  
  void conducir(int velocidad) {
    x = x + velocidad +1; 
    if(x > width) {
      x=0;
    }
    fill(c);
    rect(x,y,tam,tam);
  }
}
