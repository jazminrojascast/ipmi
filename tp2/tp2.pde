// Jazmín Rojas Castaño
// 127580/3
// Comisión3
// Tp2
// Tema: Bandas Musicales
// Banda: OASIS
int estado;
float opacidad1;
float opacidad2;
float Salida;
float salida2;
float salida3;
float salida4;
int contador;
float fondoX;
float imagen4X;
float imagen5X;
float imagen14Y;
float texto1X;
float texto2X;
float texto3X;
float texto4X;
float texto5X;
float velocidadfondo;
PImage Fondo;
PImage Fondo2;
PImage Fondo3;
PImage Fondo4;
PImage Fondo5;
PFont fuente;
PImage Imagen1;
PImage Imagen2;
PImage Imagen3;
PImage Logooasis;
PImage Imagen4;
PImage Imagen5;
PImage Imagen6;
PImage Imagen7;
PImage Imagen8;
PImage Imagen9;
PImage Imagen10;
PImage Imagen11;
PImage Imagen12;
PImage Imagen13;
PImage Imagen14;
boolean reiniciando = false;

void mousePressed() {
  if (estado == 5) {
    if (mouseSobreRectangulo(width/2, height*0.8, 120, 40)) {
      reiniciando = true;
    }
  }
}

void mouseReleased() {
  if (reiniciando) {
    inicializar();
    reiniciando = false;
  }
}

void setup() {
  size(640, 480);
  inicializar();
  Fondo = loadImage("fondo.jpg");
  Fondo2 = loadImage("Fondopantalla1.jpg");
  Fondo3 = loadImage("Fondopantalla2.jpg");
  Fondo4 = loadImage("Fondopantalla4.jpg");
  Fondo5 = loadImage("Fondopantalla5.jpg");
  Imagen1 = loadImage("liamnoel.png");
  Imagen2 = loadImage("cassette.png");
  Imagen3 = loadImage("cd1.png");
  Imagen4 = loadImage("guitarra.png");
  Imagen5 = loadImage("cd2.png");
  Imagen6 = loadImage("Vinilo.png");
  Imagen7 = loadImage("liamnoel2.png");
  Imagen8 = loadImage("Rocknrollstar.jpg");
  Imagen9 = loadImage("cd3.png");
  Imagen10 = loadImage("Fondopantalla3.jpg");
  Imagen11 = loadImage("DefinitelyMaybe.png");
  Imagen12 = loadImage("(WhatstheStory)MorningGlory_.jpg");
  Imagen13 = loadImage("Beherenow.jpg");
  Imagen14 = loadImage("Corazonroto.png");
  fuente = loadFont("BootzyTM-48.vlw");
  Logooasis = loadImage("logo.png");
}

void draw() {
  if (estado==0) {
    pantalladeinicio();
  } else if (estado==1) {
    pantalla1();
  } else if (estado==2) {
    pantalla2();
  } else if (estado==3) {
    pantalla3();
  } else if (estado==4) {
    pantalla4();
  } else if (estado==5) {
    pantalla5();
  }
}
