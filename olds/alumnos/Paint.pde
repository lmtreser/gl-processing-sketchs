/* Colegio San Agustín - 6to. "A"
 Proyecto Tecnologías Creativas 2018
 */

int rojo;
int verde;
int azul;
int grosor;

void setup () {

  size(600, 400);
  background(#FFFFFF);
  fill(#DECECE);
  noStroke();
  quad(0, 0, 600, 0, 600, 35, 0, 35);
  fill(0);
  text("Archivo", 10, 20);
  fill(0);
  text("Edición", 60, 20);
  fill(0);
  text("Ver", 110, 20);
  fill(0);
  text("Imagen", 140, 20);
  fill(0);
  text("Colores", 190, 20);
  fill(0);
  text("Ayuda", 240, 20);
  fill(#DECECE);
  noStroke();
  rect(0, 35, 70, 600);
  fill(#F748EC);
  rect(5, 35, 25, 25);
  fill(#F71119);
  rect(35, 35, 25, 25);
  fill(#1411F7);
  rect(5, 65, 25, 25);
  fill(#FF8103);
  rect(35, 65, 25, 25);
  fill(#EDFF03);
  rect(5, 95, 25, 25);
  fill(#B203FF);
  rect(35, 95, 25, 25);
  fill(#03D7FF);
  rect(5, 125, 25, 25);
  fill(#66FF03);
  rect(35, 125, 25, 25);
  fill(#FFFFFF);
  rect(5, 155, 25, 25);
  fill(0);
  rect(35, 155, 25, 25);
  fill(#B7B6B5);
  rect(5, 215, 25, 25);
  fill(#B7B6B5);
  rect(35, 215, 25, 25);
  fill(#B7B6B5);
  rect(5, 245, 25, 25);
  fill(#B7B6B5);
  rect(35, 245, 25, 25);
  fill(#B7B6B5);
  rect(5, 275, 25, 25);
  fill(#B7B6B5);
  rect(35, 275, 25, 25);
  fill(#B7B6B5);
  rect(5, 305, 25, 25);
  fill(#B7B6B5);
  rect(35, 305, 25, 25);
  fill(#B7B6B5);
  rect(5, 335, 25, 25);
  fill(#B7B6B5);
  rect(35, 335, 25, 25);
  fill(#DECECE);
  rect(0, 370, 600, 45);
  fill(0);
  text("B", 14, 231);
  fill(0);
  text ("Guardar", 540, 20);
  noFill();
  stroke(0);
  rect(535, 7, 53, 20);
}



void draw() {

  if (mousePressed==true) {

    if (pmouseX>=5) {
      if (pmouseX<=30) {
        if (pmouseY>=35) {
          if (pmouseY<=60) {
            rojo=247;
            verde=72;
            azul=236;
            grosor=3;
          }
        }
      }
    }
  }


  if (mousePressed==true) {

    if (pmouseX>=35) {
      if (pmouseX<=60) {
        if (pmouseY>=35) {
          if (pmouseY<=60) {
            rojo=247;
            verde=17;
            azul=25;
            grosor=3;
          }
        }
      }
    }
  }

  if (mousePressed==true) {

    if (pmouseX>=5) {
      if (pmouseX<=30) {
        if (pmouseY>=65) {
          if (pmouseY<=90) {
            rojo=20;
            verde=17;
            azul=247;
            grosor=3;
          }
        }
      }
    }
  }

  if (mousePressed==true) {

    if (pmouseX>=35) {
      if (pmouseX<=60) {
        if (pmouseY>=65) {
          if (pmouseY<=90) {
            rojo=255;
            verde=129;
            azul=3;
            grosor=3;
          }
        }
      }
    }
  }  

  if (mousePressed==true) {

    if (pmouseX>=5) {
      if (pmouseX<=30) {
        if (pmouseY>=95) {
          if (pmouseY<=120) {
            rojo=237;
            verde=255;
            azul=3;
            grosor=3;
          }
        }
      }
    }
  }  

  if (mousePressed==true) {

    if (pmouseX>=35) {
      if (pmouseX<=60) {
        if (pmouseY>=95) {
          if (pmouseY<=120) {
            rojo=178;
            verde=3;
            azul=255;
            grosor=3;
          }
        }
      }
    }
  }  

  if (mousePressed==true) {

    if (pmouseX>=5) {
      if (pmouseX<=30) {
        if (pmouseY>=125) {
          if (pmouseY<=150) {
            rojo=3;
            verde=215;
            azul=255;
            grosor=3;
          }
        }
      }
    }
  }  

  if (mousePressed==true) {

    if (pmouseX>=35) {
      if (pmouseX<=60) {
        if (pmouseY>=125) {
          if (pmouseY<=150) {
            rojo=102;
            verde=255;
            azul=3;
            grosor=3;
          }
        }
      }
    }
  }  

  if (mousePressed==true) {

    if (pmouseX>=5) {
      if (pmouseX<=30) {
        if (pmouseY>=155) {
          if (pmouseY<=180) {
            rojo=255;
            verde=255;
            azul=255;
            grosor=3;
          }
        }
      }
    }
  }  

  if (mousePressed==true) {

    if (pmouseX>=35) {
      if (pmouseX<=60) {
        if (pmouseY>=155) {
          if (pmouseY<=180) {
            rojo=0;
            verde=0;
            azul=0;
            grosor=3;
          }
        }
      }
    }
  }




  if (mousePressed==true) {

    if (pmouseX>=5) {
      if (pmouseX<=30) {
        if (pmouseY>=215) {
          if (pmouseY<=240) {
            rojo=255;
            verde=255;
            azul=255;
            grosor=20;
          }
        }
      }
    }
  }

  if (pmouseX>=75) {
    if (pmouseX<=595) {
      if (pmouseY>=40) {
        if (pmouseY<=355) {   
          if (mousePressed==true) {
            stroke (rojo, verde, azul);
            strokeWeight (grosor);
            line (pmouseX, pmouseY, mouseX, mouseY);
          }
        }
      }
    }
  }

  if (mousePressed==true) {
    if (pmouseX>=535) {
      if (pmouseX<=588) {
        if (pmouseY>=7) {
          if (pmouseY<=27) {
            save("Coki.png");
          }
        }
      }
    }
  }
}
