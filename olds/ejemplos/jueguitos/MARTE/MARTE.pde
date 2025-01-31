float veloc = 0.0;


void setup() {
  size(600,200);
  smooth();
  
}


void draw() {
  background(255);
  
  //CIELO DE FONDO 
 stroke(0);
  strokeWeight(0);
   fill(#290909);
   rect(0,0,600,50);
   fill(#8b1b1b);
   rect(0,45,600,50);
   fill(#be7a7a);
   rect(0,95,600,50);
 
  float montanias = veloc;
  float valle = veloc;
  float rueda1,rueda2;



  noFill();
  stroke(0);
  strokeWeight(0);
  

  for (int i = 0; i < width; i++) {
    float y = noise(montanias)*height;
    rueda1=random(3);
    rueda2=random(3);
    montanias += 0.01;
    valle += 0.001;
   
    strokeWeight(3);
    stroke(20);
    point(i,y);
    stroke(#9f5500);
    line(i,y+2,i,height);
    stroke(#642300);
    line(i,y+20,i,height);

//RUEDAS
fill(#642300);
noStroke();
strokeWeight(0);
rect(width/2-38,height-17,72,17);//taparueda
fill(150);
ellipse(326,height-rueda1-6,15,15);//rueda delantera
ellipse(271,height-rueda2-6,15,15);//rueda trasera
rect(268,166,10,15);//tanque
strokeWeight(3);
stroke(150);
line(271,164,274,164);//escape
line(273,163,273,157);//escape
line(269,156,271,156);//escape
stroke(255);
strokeWeight(7);
point(326,height-rueda1-6);//rueda delantera
point(271,height-rueda2-6);//rueda trasera


line(282,188,315,188);//base vehiculo
noFill();

strokeWeight(3);
stroke(150,0,0);
bezier(261,190,262,178,279,178,280,190);//guardabarro trasero
bezier(317,190,317,178,334,178,335,190);//guardabarro delantero

//parabolica
fill(160);
noStroke();
strokeWeight(0);
beginShape();
vertex(324,154);
vertex(339,169);
vertex(328,168);
vertex(324,163);
vertex(324,154);
endShape(CLOSE);
fill(220);//brillo parab
beginShape();
 vertex(329,159);
 vertex(333,164);
 vertex(327,167);
 vertex(325,165);
endShape(CLOSE);
stroke(150);
strokeWeight(1);
line(330,161,334,157);//tripode parab
line(324,168,327,173);//tripode parab
line(327,173,327,179);//tripode parab
line(321,172,321,179);//radar
strokeWeight(3);
stroke(200,200,0);
point(334,157);
point(325,167);

//CAMARA Y ACCESORIOS
strokeWeight(2);
stroke(100);
line(282,185,315,185);
line(282,191,315,191);

stroke(150);
strokeWeight(0);
rect(317,169,5,4);

strokeWeight(2);
stroke(0);
point(319,171);

stroke(160);
strokeWeight(1);
line(299,164,299,169);//volante
line(299,166,304,167);//volante
line(305,168,305,182);//volante
line(313,185,317,179);
line(309,167,309,184);//camara
rect(307,162,7,4);//camara
stroke(0,150,150);
strokeWeight(3);
point(312,164);//camara
stroke(100);
line(270,164,270,178);
stroke(50);
line(269,170,276,170);//brillo tanque
line(269,175,276,175);//brillo tanque


strokeWeight(6);
stroke(210);
line(287,162,293,176); //astronauta
line(292,176,301,173); //astronauta
strokeWeight(4);
line(301,174,304,183); //astronauta
line(304,183,308,183); //astronauta
stroke(255);
strokeWeight(12);
point(288,160);
strokeWeight(0);
noStroke();
fill(#21697f);
beginShape();
vertex(287,160);
vertex(291,154);
vertex(295,159);
vertex(295,164);
vertex(287,160);
endShape(CLOSE);
strokeWeight(2);
stroke(#b3d4e5);
line(291,156,293,160);

stroke(200);
strokeWeight(2);
line(274,164,274,178);//brillo tanque
//brazo astronauta
stroke(250);
strokeWeight(4);
line(288,167,290,175);
line(290,175,297,172);
point(300,169);
strokeWeight(1);
line(297,170,299,166);
//ASIENTO
stroke(59);
line(281,165,285,165);
line(285,165,289,181);
line(289,181,299,179);
stroke(100);
line(282,167,286,181);//asiento
line(286,181,296,181);//asiento
strokeWeight(2);
line(288,184,288,182);//pata asiento
line(296,184,296,182);//pata asiento
stroke(150);
strokeWeight(1);
line(281,167,285,181);
line(286,182,296,182);
noStroke();
noFill();
  
 }
  veloc+= 0.1;
}
