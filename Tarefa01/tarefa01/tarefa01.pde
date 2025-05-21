void setup() {
  size(1000, 600);
  colorMode(HSB, 360, 100, 100);
  PFont baumans = createFont("Baumans-Regular.ttf", 128);
  textFont(baumans);
}

void draw() {
  background(60, 10, 100);
  noStroke();

  //ELIPSES
  fill(210, 90, 70); //AZUL
  
  ellipse(75, 25, 10, 10); //CANTO SUPERIOR ESQUERDO
  ellipse(50, 50, 10, 10); //CANTO SUPERIOR ESQUERDO
  ellipse(75, 50, 10, 10); //CANTO SUPERIOR ESQUERDO
  ellipse(25, 75, 10, 10); //CANTO SUPERIOR ESQUERDO
  ellipse(50, 75, 10, 10); //CANTO SUPERIOR ESQUERDO
  ellipse(75, 75, 10, 10); //CANTO SUPERIOR ESQUERDO
  
  ellipse(925, 25, 10, 10); //CANTO SUPERIOR DIREITO
  ellipse(925, 50, 10, 10); //CANTO SUPERIOR DIREITO
  ellipse(950, 50, 10, 10); //CANTO SUPERIOR DIREITO
  ellipse(925, 75, 10, 10); //CANTO SUPERIOR DIREITO
  ellipse(950, 75, 10, 10); //CANTO SUPERIOR DIREITO
  ellipse(975, 75, 10, 10); //CANTO SUPERIOR DIREITO
  
  ellipse(25, 525, 10, 10); //CANTO INFERIOR ESQUERDO
  ellipse(50, 525, 10, 10); //CANTO INFERIOR ESQUERDO
  ellipse(75, 525, 10, 10); //CANTO INFERIOR ESQUERDO
  ellipse(50, 550, 10, 10); //CANTO INFERIOR ESQUERDO
  ellipse(75, 550, 10, 10); //CANTO INFERIOR ESQUERDO
  ellipse(75, 575, 10, 10); //CANTO INFERIOR ESQUERDO
  
  ellipse(975, 525, 10, 10); //CANTO INFERIOR DIREITO
  ellipse(950, 550, 10, 10); //CANTO INFERIOR DIREITO
  ellipse(925, 550, 10, 10); //CANTO INFERIOR DIREITO
  ellipse(925, 525, 10, 10); //CANTO INFERIOR DIREITO
  ellipse(950, 525, 10, 10); //CANTO INFERIOR DIREITO
  ellipse(925, 575, 10, 10); //CANTO INFERIOR DIREITO
  
  //RETÂNGULOS
  rect(0, 100, 1000, 10); //RETÃNGULO 1 DE CIMA
  rect(0, 120, 1000, 10); //RETÂNGULO 2 DE CIMA
  rect(0, 140, 1000, 10); //RETÃNGULO 3 DE CIMA
  rect(0, 160, 1000, 10); //RETÂNGULO 4 DE CIMA
  rect(0, 180, 1000, 10); //RETÂNGULO 5 DE CIMA
  
  rect(0, 410, 1000, 10); //RETÂNGULO 1 DE BAIXO
  rect(0, 430, 1000, 10); //RETÂNGULO 2 DE BAIXO
  rect(0, 450, 1000, 10); //RETÂNGULO 3 DE BAIXO
  rect(0, 470, 1000, 10); //RETÂNGULO 4 DE BAIXO
  rect(0, 490, 1000, 10); //RETÂNGULO 5 DE BAIXO
  
  //TRIÂNGULOS DOS CANTOS
  fill(0, 90, 80); //VERMELHO
  
  triangle(0, 0, 100, 0, 0, 100); //CANTO SUPERIOR ESQUERDO
  triangle(1000, 0, 900, 0, 1000, 100); //CANTO SUPERIOR DIREITO
  triangle(0, 600, 100, 600, 0, 500); //CANTO INFERIOR ESQUERDO
  triangle(900, 600, 1000, 500, 1000, 600); //CANTO INFERIOR DIREITO
  
  //TRIÂNGULOS "BORBOLETAS"
  
  triangle(330, 0, 300, 30, 350, 50); //NOROESTE
  triangle(330, 100, 300, 70, 350, 50); //NOROESTE
  triangle(370, 0, 400, 30, 350, 50); //NOROESTE
  triangle(400, 70, 370, 100, 350, 50); //NOROESTE

  triangle(630, 0, 600, 30, 650, 50); //NORDESTE
  triangle(630, 100, 600, 70, 650, 50); //NORDESTE
  triangle(670, 0, 700, 30, 650, 50); //NORDESTE
  triangle(700, 70, 670, 100, 650, 50); //NORDESTE
  
  triangle(330, 500, 300, 530, 350, 550); //SUDOESTE
  triangle(330, 600, 300, 570, 350, 550); //SUDOESTE
  triangle(370, 500, 400, 530, 350, 550); //SUDOESTE
  triangle(400, 570, 370, 600, 350, 550); //SUDOESTE
  
  triangle(630, 500, 600, 530, 650, 550); //SUDESTE
  triangle(630, 600, 600, 570, 650, 550); //SUDESTE
  triangle(670, 500, 700, 530, 650, 550); //SUDESTE
  triangle(700, 570, 670, 600, 650, 550); //SUDESTE
  
  fill(210, 90, 70); //AZUL
  
  triangle(160, 200, 100, 260, 200, 300); //OESTE
  triangle(200, 300, 100, 340, 160, 400); //OESTE
  
  triangle(840, 200, 900, 260, 800, 300); //LESTE
  triangle(800, 300, 840, 400, 900, 340); //LESTE
  
  //QUADRILÁTEROS
  fill(60, 90, 90); //AMARELO
  
  quad(0, 0, 25, 0, 25, 75, 0, 100); //CANTO SUPERIOR ESQUERDO (MAIOR)
  quad(50, 0, 75, 0, 75, 25, 50, 50); //CANTO SUPERIOR ESQUERDO (MENOR)
  
  quad(1000, 0, 975, 0, 975, 75, 1000, 100); //CANTO SUPERIOR DIREITO (MAIOR)
  quad(950, 0, 925, 0, 925, 25, 950, 50); //CANTO SUPERIOR DIREITO (MAIOR)
  
  quad(0, 600, 25, 600, 25, 525, 0, 500); //CANTO INFERIOR ESQUERDO (MAIOR)
  quad(50, 600, 75, 600, 75, 575, 50, 550); //CANTO INFERIOR ESQUERDO (MENOR)
  
  quad(975, 600, 1000, 600, 1000, 500, 975, 525); //CANTO INFERIOR DIREITO (MAIOR)
  quad(950, 600, 925, 600, 925, 575, 950, 550); //CANTO INFERIOR DIREITO (MEN0R)
  
  
  //ARCOS
  fill(210, 90, 70); //AZUL
  
  arc(200, 0, 200, 200, radians(90), radians(180)); //NOROESTE
  arc(200, 100, 200, 200, radians(270), radians(360)); //NOROESTE
  
  arc(800, 100, 200, 200, radians(180), radians(270)); //NORDESTE
  arc(800, 0, 200, 200, radians(0), radians(90)); //NOROESTE
  
  arc(200, 600, 200, 200, radians(180), radians(270)); //SUDOESTE
  arc(200, 500, 200, 200, radians(0), radians(90)); //SUDOESTE
  
  arc(800, 500, 200, 200, radians(90), radians(180)); //SUDESTE
  arc(800, 600, 200, 200, radians(270), radians(360)); //SUDESTE
  
  
  fill(0, 90, 80); //VERMELHO
  stroke(0, 90, 80); //BORDA VERMELHA
  strokeWeight(2);
  
  arc(500, 200, 200, 200, radians(90), radians(180), CHORD); //CENTRO
  arc(400, 300, 200, 200, radians(270), radians(360), CHORD); //CENTRO
  arc(500, 200, 200, 200, radians(0), radians(90), CHORD); //CENTRO
  arc(600, 300, 200, 200, radians(180), radians(270), CHORD); //CENTRO
  arc(500, 400, 200, 200, radians(180), radians(270), CHORD); //CENTRO
  arc(400, 300, 200, 200, radians(0), radians(90), CHORD); //CENTRO
  arc(600, 300, 200, 200, radians(90), radians(180), CHORD); //CENTRO
  arc(500, 400, 200, 200, radians(270), radians(360), CHORD); //CENTRO
  
  noStroke();
  
  arc(0, 300, 200, 200, radians(270), radians(450)); //OESTE (SEMICÍRCULO VERMELHO EXTERNO)
  arc(1000, 300, 200, 200, radians(90), radians(270)); //LESTE (SEMICÍRCULO VERMELHO EXTERNO)
 
  fill(60, 90, 90); //AMARELO
 
  arc(450, 0, 100, 100, 0, PI); //NORTE
  arc(450, 100, 100, 100, PI, radians(360)); //NORTE
  arc(500, 50, 100, 100, radians(270), radians(450)); //NORTE
  arc(600, 50, 100, 100, radians(90), radians(270)); //NORTE
  
  stroke(60, 90, 90);
  strokeWeight(2);
  
  arc(0, 200, 200, 200, radians(270), radians(360), CHORD); //(PÉTALA) NOROESTE
  arc(100, 100, 200, 200, radians(90), radians(180), CHORD); //(PÉTALA) NOROESTE
  arc(1000, 200, 200, 200, radians(180), radians(270), CHORD); //(PÉTALA) NORDESTE
  arc(900, 100, 200, 200, 0, radians(90), CHORD); //(PÉTALA) NORDESTE
  arc(100, 500, 200, 200, radians(180), radians(270), CHORD); //(PÉTALA) SUDOESTE
  arc(0, 400, 200, 200, radians(0), radians(90), CHORD); //(PÉTALA) SUDOESTE
  arc(1000, 400, 200, 200, radians(90), radians(180), CHORD); //(PÉTALA) SUDESTE
  arc(900, 500, 200, 200, radians(270), radians(360), CHORD); //(PÉTALA) SUDESTE
  
  noStroke();
  strokeWeight(1);
  
  arc(0, 300, 150, 150, radians(270), radians(450)); //SEMICÍRCULO MÉDIO ESQUERDO
  arc(1000, 300, 150, 150, radians(90), radians(270)); //SEMICÍRCULO MÉDIO DIREITO
  
  arc(400, 300, 400, 400, radians(90), radians(270)); //SEMICÍRCULO GRANDE ESQUERDO
  arc(600, 300, 400, 400, radians(270), radians(450)); //SEMICÍRCULO GRANDE DIREITO
  
  fill(210, 90, 70); //AZUL
  arc(400, 300, 200, 200, radians(90), radians(270)); //SEMICÍRCULO AZUL ESQUERDO
  arc(600, 300, 200, 200, radians(270), radians(450)); //SEMICÍRCULO AZUL DIREITO
  
  fill(0, 90, 80); //VERMELHO
  
  arc(0, 300, 100, 100, radians(270), radians(450)); //SEMICÍRCULO MENOR ESQUERDO
  arc(1000, 300, 100, 100, radians(90), radians(270)); //SEMICÍRCULO MENOR DIREITO
  
  fill(0, 90, 80);
  rect(400, 500, 200, 100);
  fill(0, 0, 100);
  textAlign(CENTER);
  textSize(30);
  text("BAUHAUS", 500, 545);
  text("2025", 500, 580);
  
  //for (int w=0; w <= 1000; w+=100) {
  //  stroke(0, 0, 0);
  //  fill(0, 0, 0);
  //  line(w, 0, w, 600);
  //}
  //for (int h=0; h <= 600; h+=100) {
  //  stroke(0, 0, 0);
  //  fill(0, 0, 0);
  //  line(0, h, 1000, h);
  //}

}
