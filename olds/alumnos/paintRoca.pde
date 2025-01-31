/*  MS Paint
 Alumno:  Roca
 Profesor: Lucas Martín Treser
 2018
 
 El Paint consta de: 
 7 Colores y 7 Herramientas
 
 Colores:
 Azul
 Rojo
 Amarillo
 Naranja
 Violeta
 Verde
 Blanco (o goma)
 Negro
 
 Herramientas
 Disquet: Guardar
 Flecha: resetear/borrar todo
 +: Sumar grosor
 -: Restar grosor
 Lapiz: Lapiz trazo fino (se modifica con el grosor)
 Cuadrado: Cuadrado de 5x5 (se modifica con el grosor)
 Círculo: Punto de tamaño 10.
 
 Hay un bug con el grosor que no pude solucionar (si se va a negativo se trava el programa y no puedo sumarle 1 antes de que se trave)
 
 Pegue dos veces la estructura del paint para poder solucionar el bug de borrar todo, es decir
 si la línea se pasa hacia donde estan las herramientas, no se borraba, por lo que pegando 
 nuvamente el código de la estructura se soluciona.
 
 Perdón por enviarlo tarde, no podía solucionar los bugs y no queria entregarlo con ellos.*/

int rojo=0;
int verde=0;
int azul=0;
int grosor=1;
int lapiz=1;
int cuadrado=0;
int circulo=0;

void setup () {
  size (1200, 700);
  background (#FFFFFF);
  fill (#A2A2A2);
  rect (0, 0, 1200, 70);
  strokeWeight (2);
  stroke (#000000);
  line (1200, 75, 0, 75);
  line (1200, 70, 0, 70);
  stroke (#000000);
  fill (#A2A2A2);
  rect (645, 20, 30, 30); //Rectángulo color
  stroke (#001BFF); //Color Linea Azul
  fill (#001BFF); //Color Relleno Azul
  rect (648, 23, 24, 24); //Cuadrado color azul
  stroke (#000000);
  fill (#A2A2A2);
  rect (725, 20, 30, 30); //Rectángulo color rojo
  stroke (#FF002F); //Color Linea rojo
  fill (#FF002F); //Color Relleno rojo
  rect (728, 23, 24, 24); //Cuadrado color rojo
  stroke (#000000);
  fill (#A2A2A2);
  rect (805, 20, 30, 30); //Rectángulo color amarillo
  stroke (#FFFF00); //Color Linea amarillo
  fill (#FFFF00); //Color Relleno amarillo
  rect (808, 23, 24, 24); //Cuadrado color amarillo
  stroke (#000000);
  fill (#A2A2A2);
  rect (885, 20, 30, 30); //Rectángulo color naranja
  stroke (#FF8000); //Color Linea naranja
  fill (#FF8000); //Color Relleno naranja
  rect (888, 23, 24, 24); //Cuadrado color naranja
  stroke (#000000);
  fill (#A2A2A2);
  rect (965, 20, 30, 30); //Rectángulo color violeta
  stroke (#8000FF); //Color Linea violeta
  fill (#8000FF); //Color Relleno violeta
  rect (968, 23, 24, 24); //Cuadrado color violeta
  stroke (#000000); //Color Lineas Rectangulo (#000000)
  fill (#A2A2A2);   //Color Relleno Rectangulo (#000000)
  rect (1045, 20, 30, 30); //Rectángulo color verde
  stroke (#00FF00); //Color Linea verde
  fill (#00FF00); //Color Relleno verde
  rect (1048, 23, 24, 24); //Cuadrado color verde
  stroke (#000000);
  fill (#A2A2A2);
  rect (1125, 20, 30, 30); //Rectángulo blanco/negro
  stroke (#FFFFFF); //Color Linea blanco
  fill (#FFFFFF); //Color Relleno blanco
  rect (1128, 23, 12, 24); //Cuadrado blanco
  stroke (#000000); //Color Linea negro
  fill (#000000); //Color Relleno negro
  rect (1141, 23, 12, 24); //Cuadrado negro
  strokeWeight (2);
  line (600, 0, 600, 70); //Linea separacion herramientas con paleta
  stroke (#000000);
  fill (#A2A2A2);

  fill (#9FC8F2);
  rect (50, 20, 30, 30); //Rectángulo colorstroke (#000000);
  stroke (#000000);
  fill (#FFFFFF);
  rect (55, 25, 20, 20);
  rect (57, 35, 16, 9);//grabar
  line (56, 26, 56, 35);
  line (74, 26, 74, 35);//grabar
  point (63, 41);//grabar

  fill (#9FC8F2);
  rect (130, 20, 30, 30); //Rectángulo colorstroke (#000000);
  stroke (#000000);
  line (150, 28, 150, 42); 
  line (145, 42, 150, 42);
  line (138, 28, 150, 28);
  line (138, 28, 141, 24);
  line (138, 28, 141, 32);


  fill (#9FC8F2);
  rect (210, 20, 30, 30); //Rectángulo colorstroke (#000000);
  stroke (#000000);
  fill (#A2A2A2);
  line (225, 27, 225, 43);
  line (217, 35, 233, 35);//signo mas

  fill (#9FC8F2);
  rect (290, 20, 30, 30); //Rectángulo colorstroke (#000000);
  stroke (#000000);
  fill (#A2A2A2);
  line (297, 35, 313, 35);//signo menos

  fill (#9FC8F2);
  rect (370, 20, 30, 30); //Rectángulo colorstroke (#000000);
  stroke (#000000);
  fill (#A2A2A2);
  line (377, 38, 391, 24);
  line (382, 43, 396, 30);
  line (391, 24, 396, 30);
  fill (#FFFFFF);
  triangle (377, 38, 382, 43, 374, 46);//lápiz

  fill (#9FC8F2);
  rect (450, 20, 30, 30); //Rectángulo colorstroke (#000000);
  stroke (#000000);
  fill (#FFFFFF);
  rect (457, 27, 16, 16);//cuadrado

  fill (#9FC8F2);
  rect (530, 20, 30, 30); //Rectángulo colorstroke (#000000);  >= <=
  strokeWeight (20);
  point (545, 35);//círculo
  stroke (#FFFFFF);
  strokeWeight (16);
  point (545, 35);
} 

void draw () { 
  if (pmouseX <=1200) {
    if (pmouseY >=80) {
      if (pmouseY <=700) {
        if (mouseX >=0) {         
          if (mouseY >=80) {         
            if (lapiz==1) {
              if (mousePressed==true) {
                stroke (rojo, verde, azul);
                strokeWeight (grosor);
                line (pmouseX, pmouseY, mouseX, mouseY);
              }
            }         
            if (cuadrado==1) {
              if (mousePressed==true) {
                stroke (rojo, verde, azul);
                fill (rojo, verde, azul);
                strokeWeight (grosor);
                rect (pmouseX, pmouseY, 15, 15);
              }
            }
            if (circulo==1) {
              if (mousePressed==true) {
                stroke (rojo, verde, azul);
                strokeWeight (10);
                point (mouseX, mouseY);
              }
            }
            /*if (grosor==30){
             grosor=29;
             }
             if (grosor==0) {
             grosor=1; 
             BUGs }*/
          }
        }
      }
    }
  }
  if (pmouseX >=648) {
    if (pmouseX <=672) {
      if (pmouseY >=23) {
        if (pmouseY <=47) {
          if (mousePressed==true) {
            rojo=0;
            verde=0;
            azul=255;
          }
        }
      }
    }
  }
  if (pmouseX >=728) {
    if (pmouseX <=752) {
      if (pmouseY >=23) {
        if (pmouseY <=47) {
          if (mousePressed==true) {
            rojo=255;
            verde=0;
            azul=0;
          }
        }
      }
    }
  }
  if (pmouseX >=808) {
    if (pmouseX <=832) {
      if (pmouseY >=23) {
        if (pmouseY <=47) {
          if (mousePressed==true) {
            rojo=255;
            verde=255;
            azul=0;
          }
        }
      }
    }
  }
  if (pmouseX >=888) {
    if (pmouseX <=912) {
      if (pmouseY >=23) {
        if (pmouseY <=47) {
          if (mousePressed==true) {
            rojo=255;
            verde=128;
            azul=0;
          }
        }
      }
    }
  }
  if (pmouseX >=968) {
    if (pmouseX <=992) {
      if (pmouseY >=23) {
        if (pmouseY <=47) {
          if (mousePressed==true) {
            rojo=128;
            verde=0;
            azul=255;
          }
        }
      }
    }
  }
  if (pmouseX >=1048) {
    if (pmouseX <=1072) {
      if (pmouseY >=23) {
        if (pmouseY <=47) {
          if (mousePressed==true) {
            rojo=0;
            verde=255;
            azul=0;
          }
        }
      }
    }
  }
  if (pmouseX >=1141) {
    if (pmouseX <=1153) {
      if (pmouseY >=23) {
        if (pmouseY <=47) {
          if (mousePressed==true) {
            rojo=0;
            verde=0;
            azul=0;
          }
        }
      }
    }
  }
  if (pmouseX >=1128) {
    if (pmouseX <=1140) {
      if (pmouseY >=23) {
        if (pmouseY <=47) {
          if (mousePressed==true) {
            rojo=255;
            verde=255;
            azul=255;
          }
        }
      }
    }
  }
  if (pmouseX >=55) {
    if (pmouseX <=75) {
      if (pmouseY >=25) {
        if (pmouseY <=40) {
          if (mousePressed==true) {
            save ("Imagen1.png");
          }
        }
      }
    }
  }
  if (pmouseX >=130) {
    if (pmouseX <=160) {
      if (pmouseY >=20) {
        if (pmouseY <=50) {
          if (mousePressed==true) {
            strokeWeight (1);
            stroke (#000000);
            fill (#A2A2A2);
            rect (0, 0, 1200, 70);
            strokeWeight (2);
            stroke (#000000);
            line (1200, 75, 0, 75);
            line (1200, 70, 0, 70);
            stroke (#000000);
            fill (#A2A2A2);
            rect (645, 20, 30, 30); //Rectángulo color
            stroke (#001BFF); //Color Linea Azul
            fill (#001BFF); //Color Relleno Azul
            rect (648, 23, 24, 24); //Cuadrado color azul
            stroke (#000000);
            fill (#A2A2A2);
            rect (725, 20, 30, 30); //Rectángulo color rojo
            stroke (#FF002F); //Color Linea rojo
            fill (#FF002F); //Color Relleno rojo
            rect (728, 23, 24, 24); //Cuadrado color rojo
            stroke (#000000);
            fill (#A2A2A2);
            rect (805, 20, 30, 30); //Rectángulo color amarillo
            stroke (#FFFF00); //Color Linea amarillo
            fill (#FFFF00); //Color Relleno amarillo
            rect (808, 23, 24, 24); //Cuadrado color amarillo
            stroke (#000000);
            fill (#A2A2A2);
            rect (885, 20, 30, 30); //Rectángulo color naranja
            stroke (#FF8000); //Color Linea naranja
            fill (#FF8000); //Color Relleno naranja
            rect (888, 23, 24, 24); //Cuadrado color naranja
            stroke (#000000);
            fill (#A2A2A2);
            rect (965, 20, 30, 30); //Rectángulo color violeta
            stroke (#8000FF); //Color Linea violeta
            fill (#8000FF); //Color Relleno violeta
            rect (968, 23, 24, 24); //Cuadrado color violeta
            stroke (#000000); //Color Lineas Rectangulo (#000000)
            fill (#A2A2A2);   //Color Relleno Rectangulo (#000000)
            rect (1045, 20, 30, 30); //Rectángulo color verde
            stroke (#00FF00); //Color Linea verde
            fill (#00FF00); //Color Relleno verde
            rect (1048, 23, 24, 24); //Cuadrado color verde
            stroke (#000000);
            fill (#A2A2A2);
            rect (1125, 20, 30, 30); //Rectángulo blanco/negro
            stroke (#FFFFFF); //Color Linea blanco
            fill (#FFFFFF); //Color Relleno blanco
            rect (1128, 23, 12, 24); //Cuadrado blanco
            stroke (#000000); //Color Linea negro
            fill (#000000); //Color Relleno negro
            rect (1141, 23, 12, 24); //Cuadrado negro
            strokeWeight (2);
            line (600, 0, 600, 70); //Linea separacion herramientas con paleta
            stroke (#000000);
            fill (#A2A2A2);

            fill (#9FC8F2);
            rect (50, 20, 30, 30); //Rectángulo colorstroke (#000000);
            stroke (#000000);
            fill (#FFFFFF);
            rect (55, 25, 20, 20);
            rect (57, 35, 16, 9);//grabar
            line (56, 26, 56, 35);
            line (74, 26, 74, 35);//grabar
            point (63, 41);//grabar

            fill (#9FC8F2);
            rect (130, 20, 30, 30); //Rectángulo colorstroke (#000000);
            stroke (#000000);
            line (150, 28, 150, 42); 
            line (145, 42, 150, 42);
            line (138, 28, 150, 28);
            line (138, 28, 141, 24);
            line (138, 28, 141, 32);


            fill (#9FC8F2);
            rect (210, 20, 30, 30); //Rectángulo colorstroke (#000000);
            stroke (#000000);
            fill (#A2A2A2);
            line (225, 27, 225, 43);
            line (217, 35, 233, 35);//signo mas

            fill (#9FC8F2);
            rect (290, 20, 30, 30); //Rectángulo colorstroke (#000000);
            stroke (#000000);
            fill (#A2A2A2);
            line (297, 35, 313, 35);//signo menos

            fill (#9FC8F2);
            rect (370, 20, 30, 30); //Rectángulo colorstroke (#000000);
            stroke (#000000);
            fill (#A2A2A2);
            line (377, 38, 391, 24);
            line (382, 43, 396, 30);
            line (391, 24, 396, 30);
            fill (#FFFFFF);
            triangle (377, 38, 382, 43, 374, 46);//lápiz

            fill (#9FC8F2);
            rect (450, 20, 30, 30); //Rectángulo colorstroke (#000000);
            stroke (#000000);
            fill (#FFFFFF);
            rect (457, 27, 16, 16);//cuadrado

            fill (#9FC8F2);
            rect (530, 20, 30, 30); //Rectángulo colorstroke (#000000);  >= <=
            strokeWeight (20);
            point (545, 35);//círculo
            stroke (#FFFFFF);
            strokeWeight (16);
            point (545, 35);
            stroke (#FFFFFF);
            fill (#FFFFFF);
            strokeWeight (9);
            rect (0, 80, 1300, 800);
          }
        }
      }
    }
  }
  if (pmouseX >=210) {
    if (pmouseX <=240) {
      if (pmouseY >=20) {
        if (pmouseY <=50) {
          if (mousePressed==true) {
            grosor=grosor+1;
          }
        }
      }
    }
  }
  if (pmouseX >=290) {
    if (pmouseX <=320) {
      if (pmouseY >=20) {
        if (pmouseY <=50) {
          if (mousePressed==true) {
            grosor=grosor-1;
          }
        }
      }
    }
  }
  if (pmouseX >=370) {
    if (pmouseX <=400) {
      if (pmouseY >=20) {
        if (pmouseY <=50) {
          if (mousePressed==true) {
            lapiz=1;
            cuadrado=0;
            circulo=0;
          }
        }
      }
    }
  }
  if (pmouseX >=450) {
    if (pmouseX <=480) {
      if (pmouseY >=20) {
        if (pmouseY <=50) {
          if (mousePressed==true) {
            lapiz=0;
            cuadrado=1;
            circulo=0;
          }
        }
      }
    }
  }
  if (pmouseX >=530) {
    if (pmouseX <=560) {
      if (pmouseY >=20) {
        if (pmouseY <=50) {
          if (mousePressed==true) {
            lapiz=0;
            cuadrado=0;
            circulo=1;
          }
        }
      }
    }
  }
}
