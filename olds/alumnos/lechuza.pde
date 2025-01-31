/* Actividad N°4 Obra Madi
 Acosta Y Parietti
 4°A - 13/6/19
 COLEGIO SAN AGUSTÍN
 */

int contador = 0;

void setup () {
  size (1000, 1000);
  background (#F1FAB3);
}

void draw () {
  strokeWeight (50);
  stroke (#E52A2A);
  line (10, 250, 650, 790);
  stroke (#46AA05);
  line (110, 660, 860, 290);
  stroke (#F5B70C);
  line (110, 160, 650, 790);
  stroke (#26EAE5);
  line (10, 570, 860, 10);
  stroke (#3F26EA);
  line (120, 10, 820, 660);
  stroke (#B526EA);
  line (990, 390, 10, 570);
  stroke (#26EAA4);
  line (10, 400, 990, 390);
  stroke (#FAFF15);
  line (914, 508, 110, 790);
  stroke (#DC99F5);
  line (785, 718, 550, 16);
  stroke (#F599DB);
  line (237, 785, 663, 10);
  stroke (#5F96FF);
  line (304, 13, 401, 787);
  stroke (#B1FF5F);
  line (473, 357, 857, 159);
  stroke (#D9FF5F);
  line (750, 790, 427, 11);
  //terminamos fondo
  strokeWeight (50);
  stroke (#000000);
  line (110, 10, 110, 160);
  line (110, 160, 10, 250);
  line (10, 250, 10, 570);
  line (10, 570, 110, 660);
  line (110, 660, 110, 790);
  line (110, 790, 750, 790);
  line (750, 790, 990, 390);
  line (990, 390, 860, 290);
  line (860, 290, 860, 10);
  line (860, 10, 110, 10);
  //terminamos el marco
  //empezamos un buho
  strokeWeight (4);
  stroke (#000000);
  fill(#A05C13);
  quad (280, 80, 280, 600, 690, 600, 690, 80); // base cuerpo
  fill(#5F3507);
  quad (382, 600, 588, 600, 588, 680, 382, 680); //cola 
  fill (#DE780B);
  triangle (382, 600, 485, 600, 442, 655); // pata derecha 
  triangle (485, 600, 588, 600, 528, 655); // pata izquiera
  fill(#8B5316);
  triangle (280, 640, 280, 300, 485, 600); // ala derecha
  triangle (485, 600, 690, 640, 690, 300) ; // ala izquierda
  fill (#A56521);
  triangle (485, 230, 690, 80, 690, 300); // cachete izquierdo
  triangle (485, 230, 280, 80, 280, 300); // cachete derecho
  fill(#312F2D);
  ellipse (403, 181, 100, 100); // ojo derecho
  ellipse (567, 181, 100, 100); // ojo izquierdo 
  fill(#5F3507);
  triangle (265, 80, 690, 80, 485, 250); // cara
  fill(#6C3B07);
  triangle (250, 50, 280, 150, 350, 80); // oreja derecha
  triangle (720, 50, 690, 150, 620, 80); // oreja izquierda
  fill(#EA800E);
  triangle (485, 250, 527, 216, 443, 216); //pico
  fill(#8B4903);
  triangle (690, 300, 690, 600, 740, 620); // pluma izquierda
  triangle (280, 300, 280, 600, 230, 620); // pluma derecha
  println("X: ");
  println(mouseX);
  println("Y: ");
  println(mouseY);
}
void mousePressed () {

  contador=contador+1;
  if (contador > 6) {
    contador=0;
  }

  if (contador == 6) {
    fill(#FFE40F);
  }

  if (contador == 5) {
    fill(#F52AA4);
  }

  if (contador == 4) {
    fill (#71FA4C);
  }

  if (contador == 3) {
    fill(#FF0D1D);
  }

  if (contador == 2) {
    fill(#FF8A15);
  }

  if (contador == 1) {
    fill(#1C9BFF);
  }

  if (contador == 0) {
    fill(#C310E8);
  }


  ellipse (mouseX, mouseY, 100, 100);
}
//fin
