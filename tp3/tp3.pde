//https://youtu.be/ZmLPIGs25V8
// Jazmín Rojas
// Comisíon 3
// TP3 06/26
// Obra: 03
PImage imagen;
color colordecirculosdeadelante = color(0);

void setup() {
  size(800, 400);
  imagen = loadImage("03.jpg");
}

void draw() {
  background(255);
  circulosdeatras();
  circulosdeadelante();
  image(imagen, 0, 0, 400, 400);
}

boolean cercadelmouse(float posx, float posy) {
  float d = dist(mouseX, mouseY, posx, posy);
  if (d < 200) {
    return true;
  } else {
    return false;
  }
}

void keyPressed() {
  // cambia de colores aleatoreos cuando tocas la barra espaciadora
  if (key == ' ') {
    colordecirculosdeadelante = color(random(255), random(255), random(255));
  }
  // la R reinicia al estado original
  if (key == 'r') {
    colordecirculosdeadelante = color(0);
  }
}
