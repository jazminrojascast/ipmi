// JAZMIN ROJAS, COM3,TP1 ABRIL 2026
PImage miImagen;

void setup () {
  size (800, 400);
  miImagen = loadImage("data/Fotodemimural.PNG");
}
void draw () {
  background (40, 70, 150);
  image (miImagen, 0, 0, 400, 400);
  // forma negra
  fill(0);
  noStroke ();
  beginShape();
  vertex (398, 0);
  vertex (400, 0);
  vertex (553, 0);
  vertex (544, 48);
  vertex (512, 113);
  vertex (469, 175);
  vertex (436, 236);
  vertex (411, 275);
  vertex (400, 289);
  endShape (CLOSE);
  //Linea celeste
  stroke (150, 200, 255);//color celeste
  strokeWeight (3);
  noFill ();
  beginShape ();
  curveVertex (553, 0);
  curveVertex (553, 0);
  curveVertex (544, 48);
  curveVertex (512, 113);
  curveVertex (469, 175);
  curveVertex (436, 236);
  curveVertex (411, 275);
  curveVertex (400, 289);
  curveVertex (400, 289);
  endShape ();
  // borde
  stroke (150, 200, 255);
  strokeWeight (8);
  noFill();
  ellipse (719, 209, 127, 153);
  ellipse (610, 218, 112, 130);
  ellipse (653, 214, 90, 95);
  rect (446, 199, 150, 30);
  rect (441, 187, 50, 60);
  ellipse (657, 213, 40, 45);
  //guitarra cuerpo
  fill (255, 120, 100); //color naranja
  noStroke ();
  ellipse (719, 209, 127, 153); //parte grande de la guitarra
  ellipse (610, 218, 112, 130);// parte chica de la guitarra
  ellipse (653, 214, 90, 95);
  // mastil
  rect (441, 187, 50, 60);
  rect (446, 199, 150, 30);
  //agujero de la guitarra
  fill(220);
  ellipse (657, 213, 40, 45);
  // rectangulo al lado del agujero
  fill (220);
  rect (678, 194, 8, 40);
  fill (255, 120, 100); //color
  rect (441, 187, 50, 60);
  //estrellas
  fill(255, 230, 120);
  noStroke();
  beginShape();
  vertex(500, 150);
  vertex(505, 160);
  vertex(500, 170);
  vertex (495, 160);
  endShape(CLOSE);
  beginShape ();
  vertex (620, 120);
  vertex (625, 130);
  vertex (620, 140);
  vertex (615, 130);
  endShape (CLOSE);
  beginShape();
  vertex (520, 120);
  vertex (525, 130);
  vertex (520, 140);
  vertex (515, 130);
  endShape (CLOSE);
  beginShape();
  vertex (640, 130);
  vertex (645, 140);
  vertex (640, 150);
  vertex (635, 140);
  endShape (CLOSE);
  beginShape();
  vertex (580, 100);
  vertex (585, 110);
  vertex (580, 120);
  vertex (575, 110);
  endShape (CLOSE);
  beginShape();
  vertex (540, 80);
  vertex (545, 90);
  vertex (540, 100);
  vertex (535, 90);
  endShape (CLOSE);
  beginShape();
  vertex (720, 75);
  vertex (725, 85);
  vertex (720, 95);
  vertex (715, 85);
  endShape (CLOSE);
  beginShape();
  vertex (780, 90);
  vertex (785, 100);
  vertex (780, 110);
  vertex (775, 100);
  endShape (CLOSE);
  beginShape();
  vertex (660, 85);
  vertex (665, 95);
  vertex (660, 105);
  vertex (655, 95);
  endShape (CLOSE);
  beginShape();
  vertex (600, 70);
  vertex (605, 80);
  vertex (600, 90);
  vertex (595, 80);
  endShape (CLOSE);
  beginShape();
  vertex (540, 80);
  vertex (545, 90);
  vertex (540, 100);
  vertex (535, 90);
  endShape (CLOSE);
  beginShape();
  vertex (538, 149);
  vertex (543, 159);
  vertex (538, 169);
  vertex (533, 159);
  endShape (CLOSE);
  beginShape();
  vertex (760, 52);
  vertex (765, 62);
  vertex (760, 72);
  vertex (755, 62);
  endShape (CLOSE);
  // puntitos blancos de atras
  fill (255);
  ellipse (519, 128, 5, 5);
  ellipse (499, 159, 5, 5);
  ellipse (434, 300, 4, 4);
  ellipse (408, 333, 3, 3);
  ellipse (442, 367, 4, 4);
  ellipse (520, 278, 5, 5);
  ellipse (480, 302, 4, 4);
  ellipse (512, 375, 4, 4);
  ellipse (489, 349, 5, 4);
  ellipse (521, 375, 4, 4);
  ellipse (568, 325, 4, 4);
  ellipse (602, 338, 6, 6);
  ellipse (645, 309, 5, 5);
  ellipse (576, 374, 4, 4);
  ellipse (612, 391, 3, 3);
  ellipse (763, 304, 4, 4);
  ellipse (708, 322, 6, 6);
  ellipse (752, 353, 4, 4);
  ellipse (692, 381, 4, 4);
  // lineas blancas
  stroke (255);
  strokeWeight (2);
  line (411, 156, 414, 147);
  line (411, 179, 415, 169);
  line (442, 161, 447, 151);
  line (421, 197, 427, 186);
  line (411, 240, 421, 228);
  line (408, 199, 402, 206);
  line (475, 127, 462, 135);
  strokeWeight (1);
  line (438, 127, 429, 139);
  line (501, 93, 496, 106);
  line (439, 71, 433, 84);
  line (458, 66, 453, 77);
  line (480, 98, 477, 105);
  line (407, 111, 400, 119);
  line (441, 101, 436, 109);
  line (411, 76, 406, 82);
  // clavijas
  stroke (150, 200, 255);
  strokeWeight(2);
  line (445, 249, 444, 260);
  line (463, 251, 463, 259);
  line (482, 251, 483, 258);
  line (438, 261, 446, 261);
  line (457, 261, 468, 261);
  line (476, 261, 489, 261);
  line (478, 174, 480, 181);
  line (471, 173, 482, 173);
}
