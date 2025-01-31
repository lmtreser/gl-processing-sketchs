//EDUARDO CHARLONE
//BANDERAS 2020

void setup() { 
  size (500,250);
  background(0);
  fill(#232325);
  rect(5,5,490,240,10,10,10,10);
  stroke(60);
  strokeWeight(2);
  line(478,246,17,246);
  line(493,17,493,233);
  bezier(465,246,490,247,494,250,493,225);
  
  stroke(#141414);
  fill(#141414);
  beginShape();
  strokeWeight(0);
  vertex(77,12);
  vertex(421,12);
  vertex(405,16);
  vertex(405,27);
  vertex(95,27);
  vertex(95,16);
  vertex(77,12);
  endShape(CLOSE);
  
  stroke(#2f2f2f);
  fill(#2f2f2f);
beginShape();
  vertex(76,13);
  vertex(94,16);
  vertex(94,27);
  vertex(81,27);
  vertex(76,13);
endShape();
  
  stroke(#2f2f2f);
  fill(#2f2f2f);
  strokeWeight(0);
beginShape();
  vertex(421,12);
  vertex(405,16);
  vertex(405,27);
  vertex(418,27);
  vertex(421,12);
endShape(CLOSE);
  
noFill();
  stroke(50);
  strokeWeight(2);
  line(6,20,6,233);
  line(21,6,476,6);
  bezier(6,21,6,6,10,6,26,6);
  bezier(6,231,8,235,2,247,26,247);
  
  
  fill(#1d1d1d);
  stroke(0);
  strokeWeight(0);
  rect(82,36,336,190);

  stroke(#2f2f2f);
  fill(#2f2f2f);
  strokeWeight(0);
beginShape();
 vertex(68,32);
 vertex(432,32);
 vertex(418,36);
 vertex(80,36);
 vertex(68,32);
endShape(CLOSE);

beginShape();
  vertex(418,36);
  vertex(432,32);
  vertex(432,235);
  vertex(418,225);
  vertex(418,36);
endShape(CLOSE);
 
  fill(#141414);
  beginShape();
   vertex(417,225);
   vertex(432,235);
   vertex(71,236);
   vertex(82,225);
   vertex(417,225);
  endShape(CLOSE);
  
  fill(#141414);
  beginShape();
   vertex(70,234);
   vertex(70,32);
   vertex(82,36);
   vertex(82,225);
   vertex(70,234);
  endShape(CLOSE);
stroke(#2f2f2f);
  strokeWeight(2);
  line(70,234,82,225);
stroke(30);
  line(418,36,431,32);
stroke(0);
  line(30,231,30,240);
  line(35,231,35,240);
  noFill();
  strokeWeight(1);
  ellipse(54,235,12,12);

//botones izq y der
  strokeWeight(2);
  stroke(20);
  fill(26);
  rect(435,117,50,95); //FONDO BOTON DER
  rect(11,117,50,95); // FONDO BOTON IZQ
  line(54,117,54,211);
  stroke(40);
strokeWeight(5);
  line(58,118,58,210);//SOMBRA BOTON DER
  line(439,118,439,210);//SOMBRA BOTON IZQ
  stroke(20);
  line(444,118,444,210);
  line(54,118,54,210);
  stroke(0);
strokeWeight(2);
  noFill();
  rect(9,115,53,98,0,8,8,3);// BOTON MARCO IZQ
  rect(435,115,53,98,8,0,3,8);// BOT DER
  strokeWeight(3);
  stroke(35);
  line(10,181,48,181);

//sombras botones izq 
stroke(50);
  line(9,179,50,179);
  line(445,179,488,179);
  line(445,149,488,149);
 
  stroke(0);
  line(50,179,60,179);
  line(9,177,50,177);
  line(445,177,486,177);
  line(445,147,486,147);
  line(435,179,445,179);
 line(435,149,445,149);

//boton 2/3 izq
 stroke(50);
  line(9,145,50,145);
  stroke(28);
  line(446,182,486,182);
  line(446,152,486,152);
  
stroke(0);
  line(50,145,60,145);
  line(9,143,48,143);
  stroke(35);
  line(11,148,50,148);

//aux
  stroke(0);
  strokeWeight(2);
  fill(0);
  ellipse(54,235,7,7);

//perillas volumen base
 fill(40);
 stroke(255);
 strokeWeight(3);
 ellipse(37,63,40,40);//volumen
 ellipse(462,63,40,40);//dial
stroke(20);
 strokeWeight(3);
 noFill();
 bezier(35,38,5,40,5,85,35,87);//sombra grande boton izq
 bezier(456,39,430,47,430,80,456,86);//sombra grande boton der
 stroke(60);
 bezier(39,39,68,43,68,83,39,86); //sombra grande boton der
 bezier(464,39,493,43,493,83,464,86); //sombra grande boton izq
 stroke(33);
 strokeWeight(10);
 bezier(456,45,440,52,440,74,456,79); //sombra grande boton der
 bezier(35,45,15,52,15,76,35,80); //sombra grande boton izq
 noFill();
strokeWeight(1);
stroke(125);
 ellipse(462,63,44,44);//borde perilla der 1
 ellipse(462,63,38,38);//borde perilla der 2
 ellipse(37,63,44,44);//borde perilla izq 1
 ellipse(37,63,38,38);//borde perilla izq 2
 
 
 noFill();
 stroke(15);
 strokeWeight(1);
 ellipse(37,63,34,34);//borde perilla izq 3
 ellipse(462,63,34,34);//borde perilla der 3

//led
 strokeWeight(6);
 stroke(180,0,0);
 point(485,21);
 stroke(0,180,0);
 point(14,21);
 strokeWeight(2);
 stroke(255,90,90);
 point(484,20);
 stroke(90,255,90);
 point(13,20);

//USB
 strokeWeight(2);
 stroke(190);
 line(450,222,478,222);
 line(450,238,478,238);
 line(447,235,447,225);
 line(482,225,482,235);
 fill(0);
 stroke(2);
 rect(450,225,28,10);
 strokeWeight(3);
 stroke(50);
 line(453,228,475,228);//usb

//EJECT Y POWER
stroke(20);
 fill(40);
 strokeWeight(2);
 rect(26,13,40,15,2,2,2,2); //power
 rect(435,13,40,15,2,2,2,2);//eject
 noFill();
stroke(50);
 strokeWeight(2);
 //line(27,10,62,10);//sombra power
// line(23,13,23,26);//sombra power
 line(438,11,472,11);//sombra eject
 line(434,13,434,26);//sombra eject
stroke(150);
 strokeWeight(2);
 ellipse(45,20,8,8);
 stroke(40);
 strokeWeight(4);
 line(45,20,45,16);
stroke(150);
 strokeWeight(2);
 line(45,20,45,16);
 triangle(455,17,458,21,452,21);
 line(451,24,459,24);


//MICRO SD
strokeWeight(3);
 line(450,96,481,96);
 stroke(0);
 line(450,99,481,99);
 strokeWeight(1);
 stroke(150);
 line(449,95,449,99);
 line(449,95,481,95);
 stroke(5);
 line(447,94,481,94);
 line(447,94,447,99);
 stroke(90);
 line(482,100,482,95); 
 stroke(50);
 line(449,99,481,99);
noFill();
noStroke();

//textos panel
fill(200); 
textSize(7);
 text("TUNE",452,38);
 text("SD Card",450,110);
 text("SELECT",20,110);
 textSize(8);
 text("usb",431,243);
 text("REC",477,17);
 text("ON",9,17);
 text("- VOL + ",22,38);
 textSize(8);
 text("PAUSE   AUX",16,225);
 textSize(14); 
fill(80);
 text("BANDERAS DE AMERICA LATINA", 139, 25); 
 textSize(20);
fill(200);
 text("A",26,136);
 text("B",26,169);
 text("C",26,204);
 text("U",458,138);
 text("P",458,169);
 text("M",458,204);
 
 textSize(12);
   fill(150);
   //rect(150,97,200,45);
   fill(60);
   text("utilice el teclado",195,110);
   text("para ver las banderas",180,125);
   text("y flecha arriba al terminar",180,140); 
   text("version demo 6 Banderas",180,155);
  
}

void draw() {
  
}

void keyPressed() {
  if (key == 'a' || key == 'A') {
   fill(#1d1d1d);
   rect(90,40,320,180);
   fill(#1d1d1d);
   rect(90,200,320,20);//tapa Texto
   fill(#9acefe);//BANDERA ARGENTINA
   rect(150,52,200,45);
   rect(150,142,200,45);
   fill(#ffffff);
   rect(150,97,200,45);
   textSize(18);
   text("ARGENTINA",188,215);
 
  } 
  
  if (key == 'b' || key == 'B') {
     //BANDERA BRASIL
 fill(#1d1d1d);
      rect(90,40,320,180);
  fill(#1d1d1d);
  rect(90,200,320,20); // TAPA TEXTO
  fill(#009c3b); // bandera
  rect(150,52,200,135);
  fill(#ffdf00); //amarillo
  beginShape();
  vertex(250,60);
  vertex(330,120);
  vertex(250,180);
  vertex(167,120);
  vertex(250,60);
  endShape(CLOSE);
  
  fill(#002776); //AZUL
  ellipse(250,120,75,75);
  
  //estrellas  
stroke(255);
  strokeWeight(2);
   point(265,103);
   point(260,115);
   point(221,111);
   point(219,128);
   point(224,125);
   point(236,118);
   point(227,123);
   point(238,118);
   point(237,136);
   point(231,129);
   point(230,133);
   point(250,122);
   point(255,126);
   point(250,133);
   point(246,126);
   point(250,144);
   point(258,135);
   point(261,140);
   point(264,136);
   point(268,135);
   point(268,138);
   point(268,141);
   point(271,138);
   point(275,135);
   point(277,132);
   point(281,128);
   point(274,128);
     
//cinta
stroke(255);
  strokeWeight(6);
  noFill();
  bezier(216,105,243,100,270,107,285,133);
  noFill();
  stroke(#ffdf00);
  strokeWeight(3);
  ellipse(250,120,77,77);

//letras en la cinta
  stroke(#009c3b,150);
   point(220,105);
   point(224,104);
   point(229,104);
   point(233,104);
   point(237,104);
   point(244,105);
   point(252,107);
   point(256,109);
   point(260,110);
   point(265,112);
   point(271,116);
   point(274,120);
   point(278,124);
   point(282,129); 
  noStroke();
  fill(#ffdf00);
   textSize(18);
  text("BRASIL",210,215);
  }
  
  if (key == 'c' || key == 'C') {
     fill(#1d1d1d);
   rect(90,40,320,180);
   fill(#1d1d1d);
   rect(90,200,320,20);//tapa Texto
  
   fill(#ffffff);//BANDERA chile
   rect(150,52,200,67);
   fill(0,0,255);
   rect(150,52,68,67);
   fill(255,0,0);
   rect(150,119,200,68);
   stroke(255);
   strokeWeight(1);
   fill(255);
   beginShape();
    vertex(183,67);
    vertex(187,78);
    vertex(199,78);
    vertex(190,87);
    vertex(193,97);
    vertex(183,91);
    vertex(173,98);
    vertex(176,86);
    vertex(167,79);
    vertex(179,78);
    vertex(183,67);
   endShape();
   noStroke();
   fill(255);
    textSize(18);
   text("CHILE",220,215);
   noFill();
}
    
 if (key == 'u' || key == 'U') {
   //uruguay
  
   fill(#1d1d1d);
   rect(90,40,320,180);//tapafondo
   fill(#1d1d1d);
   rect(90,200,320,20);//tapa Texto
   fill(255); // bandera
   rect(150,52,200,135);
   stroke(#0076cd);
   strokeWeight(18);
   strokeCap(SQUARE);
    line(218,73,350,73);
    line(218,108,350,108);
    line(150,143,350,143);
    line(150,178,350,178);
    noStroke();
    stroke(#ffe01f);
    fill(#ffe01f);
    ellipse(183,92,10,10);
    stroke(#ffe01f);
    strokeWeight(2);
    beginShape();
    vertex(183,57);
    vertex(186,81);
    vertex(202,67);
    vertex(190,87);
    vertex(209,91);
    vertex(190,95);
    vertex(202,115);
    vertex(186,101);
    vertex(183,124);
    vertex(180,101);
    vertex(164,114);
    vertex(174,95);
    vertex(155,91);
    vertex(175,88);
    vertex(163,67);
    vertex(180,80);
    vertex(183,57);
   endShape();
    noStroke();
   
   fill(#ffffff);
    textSize(18);
   text("URUGUAY",200,215);
}
    
     if (key == 'p' || key == 'P') {
   //BANDERA PARAGUAY
     fill(#1d1d1d);
      rect(90,40,320,180);
     fill(#1d1d1d);
     rect(90,200,320,20); // TAPA TEXTO
     fill(#cd1227);
     rect(150,52,200,45);
     fill(#ffffff);
     rect(150,97,200,45);
     fill(#0037a8);
     rect(150,142,200,45);
      textSize(18);
     text("PARAGUAY",192,215);
 
}

if (key == 'm' || key == 'M') {
    //PERU 
  fill(#1d1d1d);
  rect(90,40,320,180);
  fill(#1d1d1d);
  rect(90,200,320,20); // TAPA TEXTO
  fill(#de0b1c); // bandera
  rect(150,52,200,134);  
  fill(#ffffff);
   rect(216,52,65,134);
   fill(#006a46);
   rect(150,52,66,134);
   textSize(18);
   text("MEXICO",220,215);
   noStroke();
}
  if (key == CODED) {
    if (keyCode == UP) {
      fill(#1d1d1d);
      rect(90,40,320,180);
      textSize(18);
      text("Eduardo Charlone",300,300);
      fill(0,0,0);
      text("Programacion Creativa",150,100);
      text("Lectura de Teclado",170,130);
      text("Eduardo Charlone",175,160);
      text("2020",223,190);
    }}
  else 
  
{
   
  }
}
