void setup() {
  size(800, 800);
  background(200);
  colorMode(HSB, 360, 100, 100);
  noStroke();
}

void draw() {

  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 8; j++) {
      if (i % 2 == j % 2) pad01(i * 100, j * 100, 100);
      else pad02(i * 100, j * 100, 100);
    }
  }
}


// Funções

void pad01(float px, float py, float tam) {
  fill(186, 47, 100);
  square(px, py, tam);

  sol(px + tam/2, py + tam/2, 0.9 * tam);
  
  fill(0, 0, 100);
  arc(px, py, 0.4 * tam, 0.4 * tam, 0, radians(90));
  arc(px, py, 0.6 * tam, 0.2 * tam, radians(0), radians(90));
  arc(px + tam, py + tam, 0.4 * tam, 0.4 * tam, radians(180), radians(270));
  arc(px + tam, py + tam, 0.6 * tam, 0.2 * tam, radians(180), radians(270));
}


void pad02(float px, float py, float tam){
  fill(235, 70, 64);
  square(px, py, tam);
  
  lua(px + tam/2, py + tam/2, 0.65*tam);
  estrela(px + 0.15 * tam, py + 0.15 * tam, tam * 0.1);
  estrela(px + 0.85 * tam, py + 0.85 * tam, tam * 0.15);
  
  fill(0, 0, 100);
  arc(px + tam, py, 0.4 * tam, 0.4 * tam, radians(90), radians(180));
  arc(px, py + tam, 0.4 * tam, 0.4 * tam, radians(270), radians(360));
  arc(px, py + tam, 0.6 * tam, 0.2 * tam, radians(270), radians(360));
  arc(px, py + tam, 0.6 * tam, 0.4 * tam, radians(90), radians(180));
}


void sol(float px, float py, float tam) {
  for (int c = 0; c < 3; c++) {
    fill(20 + c * 20, 75, 100);
    circle(px, py, 0.4 * tam - c * 0.1 * tam);
  }
  
  //Raios de Sol
  fill(20, 75, 100);
  triangIso(px, py - 0.5 * tam, 0.3 * tam/2, 0.5 * tam/2, "n");
  triangIso(px + 0.5 * tam, py, 0.3 * tam/2, 0.5 * tam/2, "l");
  triangIso(px - 0.5 * tam, py, 0.3 * tam/2, 0.5 * tam/2, "o");
  triangIso(px, py + 0.5 * tam, 0.3 * tam/2, 0.5 * tam/2, "s");

  fill(40, 75, 100);
  triangIso(px, py-0.4 * tam, 0.1 * tam/2, 0.2 * tam/2, "n");
  triangIso(px + 0.4 * tam, py, 0.1 * tam/2, 0.2 * tam/2, "l");
  triangIso(px - 0.4 * tam, py, 0.1 * tam/2, 0.2 * tam/2, "o");
  triangIso(px, py + 0.4 * tam, 0.1 * tam/2, 0.2 * tam/2, "s");
}


void triangIso(float px, float py, float b, float h, String dir) {
  if (dir == "n") triangle(px, py, px - b/2, py + h, px + b/2, py + h);
  else if (dir == "s") triangle(px, py, px - b/2, py - h, px + b/2, py - h);
  else if (dir == "l") triangle(px, py, px - h, py - b/2, px - h, py + b/2);
  else if (dir == "o") triangle(px, py, px + h, py - b/2, px + h, py + b/2);
}


void lua(float px, float py, float tam) {
  fill(40, 65, 100);
  ellipse(px, py, tam, tam);

  fill(60, 50, 100);
  ellipse(px, py, 0.92 * tam, 0.92 * tam);

  fill(235, 70, 64);
  ellipse(px + 0.2 * tam, py - 0.2 * tam, 0.92 * tam, 0.92 * tam);
}

void estrela(float px, float py, float tam) {
  fill(186, 47, 100);
  triangIso(px - tam/2, py, tam/2, tam/2, "o");
  triangIso(px + tam/2, py, tam/2, tam/2, "l");
  triangIso(px, py - tam/2, tam/2, tam/2, "n");
  triangIso(px, py + tam/2, tam/2, tam/2, "s");
}
