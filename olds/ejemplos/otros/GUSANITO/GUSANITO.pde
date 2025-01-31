float valores[];

int cant = 4;
int maxi = 2;
float ruidin = 0.02;

void setup() {
  size(400, 400);
  noStroke();
  background(0,0,200);
  valores = new float[cant];
  for (int i = 0; i < cant; i++) {
    valores[i] = random(maxi);
    frameRate(1000);
  }
}

void draw() {
  
  ruidin += 0.002; 
  //fill(0, 10);
  //rect(0, 0, width, height);
  fill(255, 140);
  for (int i = 0; i < cant; i+=2) {
    float vX = valores[i];
    float vY = valores[i+1];
    ellipse(noise(ruidin*vX)*width, noise(ruidin*vY)*height, ruidin*vX, ruidin*vY);
  }
}
