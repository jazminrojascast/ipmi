void inicializar() {
  estado = 0;
  contador = 0;
  fondoX = 0;
  velocidadfondo = 7.5;
  imagen4X = -200;
  imagen5X = 900;
  imagen14Y = -80;
  texto1X = 0;
  texto2X = 0;
  texto3X = 0;
  texto4X = 0;
  texto5X = 0;
  Salida = 0;
  salida2 = 0;
  salida3 = 0;
  salida4 = 0;
  opacidad1 = 0;
  opacidad2 = 0;
}
void pantalladeinicio() {
  fondoX -= velocidadfondo;
  if (fondoX <= -640) fondoX = 0;
  image(Fondo, fondoX, 0, 640, 480);
  image(Fondo, fondoX + 640, 0, 640, 480);
  image(Imagen1, 184, 25, 300, 460);
  image(Imagen6, 120, 370, 100, 100);
  image(Imagen2, 450, 380, 120, 90);
  image(Logooasis, 210, -15, 280, 270);
  contador++;
  if (contador > 60*1) {
    estado = 1;
    contador = 0;
  }
}
void pantalla1() {
  background(0);
  image(Fondo2, 0, 0, 640, 480);
  if (Salida == 0 && imagen4X < 7) imagen4X += 5;
  if (Salida == 0 && imagen5X > 500) imagen5X -= 5;
  image(Imagen4, imagen4X, -80, 235, 373);
  image(Imagen5, imagen5X, 350, 100, 99);
  fill(170, 60, 54);
  noStroke();
  rect(137, 151, 380, 60);
  fill(255);
  textSize(40);
  text("Formación de la banda", 164, 165, 498, 165);
  fill(0, 150);
  noStroke();
  rect(80, 220, max(texto1X, 0), 120);
  if (Salida == 0 && texto1X < 500) texto1X += 5;
  // info de formación de la banda
  if (texto1X > 10) {
    textFont(fuente);
    fill(255);
    textSize(22);
    text("Oasis fue una banda de rock británica formada en la ciudad de Manchester en 1991. Sus integrantes más reconocidos fueron los hermanos Liam Gallagher y Noel Gallagher, quienes se convirtieron en figuras muy importantes dentro de la música de los años 90.", 90, 230, texto1X-10, 110);
  }
  contador++;
  if (contador > 60*3.4) {
    Salida++;
    imagen4X -= 5;
    imagen5X += 5;
    texto1X -= 5;
  }
  if (Salida > 60*1.6) {
    estado = 2;
    contador = 0;
    Salida = 0;
    texto1X = 0;
    imagen4X = -200;
    imagen5X = 900;
  }
}

void pantalla2() {
  background(0);
  image(Fondo3, 0, 0, 640, 480);
  fill(255);
  textSize(40);
  text("Movimiento Britpop", 188, 48, 427, 54);
  fill(174, 60, 54, 120);
  noStroke();
  rect(80, 90, max(texto2X, 0), 140);
  if (salida2 == 0 && texto2X < 460) texto2X += 5;
  if (texto2X > 10) {
    textFont(fuente);
    fill(255);
    textSize(22);
    text("La banda formó parte del britpop, un movimiento musical británico caracterizado por el rock alternativo, las guitarras fuertes y las influencias de bandas clásicas como The Beatles. Oasis destacó rápidamente por su estilo rebelde, sus letras emocionales y la personalidad de sus integrantes.", 95, 90, texto2X-10, 140);
  }
  if (salida2 == 0 && opacidad1 < 255) opacidad1 += 4;
  tint(255, opacidad1);
  image(Imagen7, -5, 140, 258, 345);
  image(Imagen8, 380, 370, 217, 50);
  image(Imagen3, 360, 260, 100, 100);
  image(Imagen9, 490, 260, 100, 95);
  noTint();
  contador++;
  if (contador >= 60*3.4) {
    salida2++;
    texto2X -= 4;
    opacidad1 -= 5;
  }
  if (salida2 > 60*1.6) {
    estado = 3;
    contador = 0;
    opacidad1 = 0;
    texto2X = 0;
    salida2 = 0;
  }
}

void pantalla3() {
  background(0);
  image(Imagen10, 0, 0, 640, 480);
  if (salida3 == 0 && opacidad2 < 255) {
    opacidad2 += 5;
  } else if (salida3 > 0) {
    opacidad2 -= 5;
  }
  tint(255, opacidad2);
  image(Imagen11, 500, 80, 110, 110);
  tint(255, opacidad2);
  image(Imagen12, 520, 270, 110, 110);
  image(Imagen13, 480, 360, 110, 110);
  noTint();
  // info primer album
  fill(58, 105, 132);
  noStroke();
  rect(24, 15, 369, 55);
  fill(255);
  textSize(40);
  text("Su primer álbum y éxito.", 36, 31, 327, 38);
  fill(0, 120);
  noStroke();
  rect(0, 70, max(texto4X, 0), 140);
  if (salida3 == 0 && texto4X < 460) texto4X += 5;
  if (texto4X > 10) {
    textFont(fuente);
    fill(255);
    textSize(22);
    text("En 1994 lanzaron su primer álbum, Definitely Maybe, considerado uno de los discos debut más importantes del rock británico. Gracias a este álbum, la banda ganó reconocimiento internacional y comenzó a llenar estadios en distintos países.", 9, 82, texto4X, 130);
  }
  // info álbumes
  fill(58, 105, 132);
  noStroke();
  rect(28, 230, 160, 60);
  fill(255);
  textSize(40);
  text("Álbumes.", 44, 249, 162, 255);
  fill(0, 130);
  noStroke();
  rect(0, 291, max(texto4X, 0), 110);
  if (texto4X > 10) {
    textFont(fuente);
    fill(255);
    textSize(22);
    text("A lo largo de su carrera, Oasis lanzó discos muy exitosos como: Definitely Maybe, (What's the Story) Morning Glory? y Be Here Now.", 8, 300, texto4X, 100);
  }
  contador++;
  if (contador >= 60*3) {
    salida3++;
    texto4X -= 4;
  }
  if (salida3 > 60*1.6) {
    estado = 4;
    contador = 0;
    texto4X = 0;
    salida3 = 0;
    opacidad2 = 0;
  }
}

void pantalla4() {
  background(0);
  image(Fondo4, 0, 0, 640, 480);
  if (imagen14Y < -10) {
    imagen14Y += 5;
  } else {
    imagen14Y = -10;
  }
  // info separación 
  image(Imagen14, 190, imagen14Y, 230, 200);
  fill(58, 105, 140, 120);
  noStroke();
  rect(137, 151, 380, 60);
  fill(255);
  textSize(40);
  text("Separación y Regreso.", 164, 165, 498, 165);
  fill(58, 105, 132, 120);
  noStroke();
  rect(70, 210, max(texto5X, 0), 220);
  if (salida4 == 0 && texto5X < 500) texto5X += 4;
  if (texto5X > 10) {
    textFont(fuente);
    fill(255);
    textSize(22);
    text("En 2009 la banda se separó debido a constantes conflictos y discusiones entre Liam y Noel Gallagher. Después de la separación, ambos continuaron realizando proyectos musicales por separado. Sin embargo luego de muchos años separados, Oasis anunció oficialmente su regreso en 2025. Hoy en día Oasis sigue siendo una de las bandas más importantes e influyentes de la historia del rock.", 80, 220, texto5X, 200);
  }
  contador++;
  if (contador > 60*3) {
    salida4++;
    texto5X -= 4;
  }
  if (salida4 > 60*1.7) {
    estado = 5;
    contador = 0;
    texto5X = 0;
    salida4 = 0;
  }
}

boolean mouseSobreRectangulo(float x_, float y_, float ancho_, float alto_) {
  if (mouseX > x_-ancho_/2 && mouseX < x_+ancho_/2 &&
    mouseY > y_-alto_/2 && mouseY < y_+alto_/2) {
    return true;
  } else {
    return false;
  }
}

void pantalla5() {
  // pantalla final con el boton reiniciar
  image(Fondo5, 0, 0, 640, 480);
  rectMode(CENTER);
  if (mouseSobreRectangulo(width/2, height*0.8, 120, 40)) {
    fill(255, 100, 50);
  } else {
    fill(209, 79, 39);
  }
  rect(width/2, height*0.8, 120, 40);
  fill(255);
  textAlign(CENTER, CENTER);
  textFont(fuente);
  textSize(24);
  text("Reiniciar", width/2, height*0.8);
  rectMode (CORNER); 
  textAlign (LEFT);
}
