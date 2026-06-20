void circulosdeatras() {
  noFill();
  // grilla
  for (int grilla = 0; grilla < 6; grilla++) {
    // fila de circulos horizontal
    for (int fila = 0; fila < 5; fila++) {
      float x = 400 + fila * 100;
      float y = 25 + grilla * 100;
      // cambia el color si el mouse está cerca
      if (cercadelmouse(x, y)) {
        stroke(random(255), random(255), random(255));
      } else {
        stroke(0);
      }
      // secuencia de circulos unidad
      pushMatrix();
      translate(x, y);
      for (int circ = 55; circ > 1; circ -= 12) {
        float grosorcirc = map(circ, 55, 5, 3, 1);
        strokeWeight(grosorcirc);
        float tamcirc = map(circ, 55, 5, 77, 5);
        ellipse(0, 0, tamcirc, tamcirc);
      }
      popMatrix();
    }
  }
}

void circulosdeadelante() {
  fill(255);
  stroke(colordecirculosdeadelante);
  // grilla
  for (int grilla = 0; grilla < 6; grilla++) {
    // fila de circulos horizontal
    for (int fila = 0; fila < 4; fila++) {
      float x = 450 + fila * 100;
      float y = -25 + grilla * 100;
      // secuencia de circulos unidad
      pushMatrix();
      translate(x, y);
      for (int circ = 87; circ > 0; circ -= 16) {
        float grosorcirc = map(circ, 87, 5, 4, 1);
        strokeWeight(grosorcirc);
        float tamcirc = map(circ, 87, 5, 94, 5);
        ellipse(0, 0, tamcirc, tamcirc);
      }
      popMatrix();
    }
  }
}
