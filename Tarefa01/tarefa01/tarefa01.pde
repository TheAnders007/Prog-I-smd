void setup() {
  size(600, 800);
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
  
  ellipse(525, 25, 10, 10); //CANTO SUPERIOR DIREITO
  ellipse(525, 50, 10, 10); //CANTO SUPERIOR DIREITO
  ellipse(550, 50, 10, 10); //CANTO SUPERIOR DIREITO
  ellipse(525, 75, 10, 10); //CANTO SUPERIOR DIREITO
  ellipse(550, 75, 10, 10); //CANTO SUPERIOR DIREITO
  ellipse(575, 75, 10, 10); //CANTO SUPERIOR DIREITO
  
  ellipse(25, 725, 10, 10); //CANTO INFERIOR ESQUERDO
  ellipse(50, 725, 10, 10); //CANTO INFERIOR ESQUERDO
  ellipse(75, 725, 10, 10); //CANTO INFERIOR ESQUERDO
  ellipse(50, 750, 10, 10); //CANTO INFERIOR ESQUERDO
  ellipse(75, 750, 10, 10); //CANTO INFERIOR ESQUERDO
  ellipse(75, 775, 10, 10); //CANTO INFERIOR ESQUERDO
  
  ellipse(575, 725, 10, 10); //CANTO INFERIOR DIREITO
  ellipse(550, 750, 10, 10); //CANTO INFERIOR DIREITO
  ellipse(525, 750, 10, 10); //CANTO INFERIOR DIREITO
  ellipse(525, 725, 10, 10); //CANTO INFERIOR DIREITO
  ellipse(550, 725, 10, 10); //CANTO INFERIOR DIREITO
  ellipse(525, 775, 10, 10); //CANTO INFERIOR DIREITO
  
  //RETÂNGULOS
  rect(100, 0, 10, 800); //RETÃNGULO 1 DA ESQUEDA
  rect(120, 0, 10, 800); //RETÂNGULO 2 DA ESQUEDA
  rect(140, 0, 10, 800); //RETÃNGULO 3 DA ESQUEDA
  rect(160, 0, 10, 800); //RETÂNGULO 4 DA ESQUEDA
  rect(180, 0, 10, 800); //RETÂNGULO 5 DA ESQUEDA
  
  rect(410, 0, 10, 800); //RETÂNGULO 1 DA DIREITA
  rect(430, 0, 10, 800); //RETÂNGULO 2 DA DIREITA
  rect(450, 0, 10, 800); //RETÂNGULO 3 DA DIREITA
  rect(470, 0, 10, 800); //RETÂNGULO 4 DA DIREITA
  rect(490, 0, 10, 800); //RETÂNGULO 5 DA DIREITA
  
  //TRIÂNGULOS DOS CANTOS
  fill(0, 90, 80); //VERMELHO
  
  triangle(0, 0, 100, 0, 0, 100); //CANTO SUPERIOR ESQUERDO
  triangle(600, 0, 500, 0, 600, 100); //CANTO SUPERIOR DIREITO
  triangle(0, 800, 100, 800, 0, 700); //CANTO INFERIOR ESQUERDO
  triangle(500, 800, 600, 700, 600, 800); //CANTO INFERIOR DIREITO
  
  //TRIÂNGULOS "BORBOLETAS"
  
  triangle(230, 0, 200, 30, 250, 50); //NORTE (UM POUCO PRA ESQUERDA)
  triangle(230, 100, 200, 70, 250, 50); //NORTE (UM POUCO PRA ESQUERDA)
  triangle(270, 0, 300, 30, 250, 50); //NORTE (UM POUCO PRA ESQUERDA)
  triangle(300, 70, 270, 100, 250, 50); //NORTE (UM POUCO PRA ESQUERDA)

  triangle(330, 0, 300, 30, 350, 50); //NORTE (UM POUCO PRA DIREITA)
  triangle(330, 100, 300, 70, 350, 50); //NORTE (UM POUCO PRA DIREITA)
  triangle(370, 0, 400, 30, 350, 50); //NORTE (UM POUCO PRA DIREITA)
  triangle(400, 70, 370, 100, 350, 50); //NORTE (UM POUCO PRA DIREITA)
  
  fill(210, 90, 70); //AZUL
  
  triangle(260, 100, 200, 160, 300, 200); //NORTE (UM POUCO PRA ESQUERDA)
  triangle(340, 100, 400, 160, 300, 200); //NORTE (UM POUCO PRA ESQUERDA)
  
  triangle(300, 600, 200, 640, 260, 700); //NORTE (UM POUCO PRA DIREITA)
  triangle(300, 600, 340, 700, 400, 640); //NORTE (UM POUCO PRA DIREITA)
  
  //QUADRILÁTEROS
  fill(60, 90, 90); //AMARELO
  
  quad(0, 0, 25, 0, 25, 75, 0, 100); //CANTO SUPERIOR ESQUERDO (MAIOR)
  quad(50, 0, 75, 0, 75, 25, 50, 50); //CANTO SUPERIOR ESQUERDO (MENOR)
  
  quad(600, 0, 575, 0, 575, 75, 600, 100); //CANTO SUPERIOR DIREITO (MAIOR)
  quad(550, 0, 525, 0, 525, 25, 550, 50); //CANTO SUPERIOR DIREITO (MAIOR)
  
  quad(0, 800, 25, 800, 25, 725, 0, 700); //CANTO INFERIOR ESQUERDO (MAIOR)
  quad(50, 800, 75, 800, 75, 775, 50, 750); //CANTO INFERIOR ESQUERDO (MENOR)
  
  quad(575, 800, 600, 800, 600, 700, 575, 725); //CANTO INFERIOR DIREITO (MAIOR)
  quad(550, 800, 525, 800, 525, 775, 550, 750); //CANTO INFERIOR DIREITO (MEN0R)
  
  
  //ARCOS
  fill(210, 90, 70); //AZUL
  
  arc(0, 200, 200, 200, radians(270), radians(360)); //NOROESTE
  arc(100, 200, 200, 200, radians(90), radians(180)); //NOROESTE
  
  arc(600, 200, 200, 200, radians(180), radians(270)); //NORDESTE
  arc(500, 200, 200, 200, radians(0), radians(90)); //NOROESTE
  
  arc(100, 600, 200, 200, radians(180), radians(270)); //SUDOESTE
  arc(0, 600, 200, 200, radians(0), radians(90)); //SUDOESTE
  
  arc(500, 600, 200, 200, radians(270), radians(360)); //SUDESTE
  arc(600, 600, 200, 200, radians(90), radians(180)); //SUDESTE
  
  
  fill(0, 90, 80); //VERMELHO
  stroke(0, 90, 80); //BORDA VERMELHA
  strokeWeight(2);
  
  arc(300, 300, 200, 200, radians(90), radians(180), CHORD); //CENTRO
  arc(200, 400, 200, 200, radians(270), radians(360), CHORD); //CENTRO
  arc(300, 300, 200, 200, radians(0), radians(90), CHORD); //CENTRO
  arc(400, 400, 200, 200, radians(180), radians(270), CHORD); //CENTRO
  arc(300, 500, 200, 200, radians(180), radians(270), CHORD); //CENTRO
  arc(200, 400, 200, 200, radians(0), radians(90), CHORD); //CENTRO
  arc(400, 400, 200, 200, radians(90), radians(180), CHORD); //CENTRO
  arc(300, 500, 200, 200, radians(270), radians(360), CHORD); //CENTRO
  
  noStroke();
  
  arc(0, 400, 200, 200, radians(270), radians(450)); //OESTE (SEMICÍRCULO VERMELHO EXTERNO)
  arc(600, 400, 200, 200, radians(90), radians(270)); //LESTE (SEMICÍRCULO VERMELHO EXTERNO)
 
  fill(60, 90, 90); //AMARELO
  
  stroke(60, 90, 90);
  strokeWeight(2);
  
  arc(100, 100, 200, 200, radians(270), radians(360), CHORD); //(PÉTALA) NOROESTE
  arc(200, 0, 200, 200, radians(90), radians(180), CHORD); //(PÉTALA) NOROESTE
  arc(500, 100, 200, 200, radians(180), radians(270), CHORD); //(PÉTALA) NORDESTE
  arc(400, 0, 200, 200, 0, radians(90), CHORD); //(PÉTALA) NORDESTE
  arc(200, 800, 200, 200, radians(180), radians(270), CHORD); //(PÉTALA) SUDOESTE
  arc(100, 700, 200, 200, radians(0), radians(90), CHORD); //(PÉTALA) SUDOESTE
  arc(500, 700, 200, 200, radians(90), radians(180), CHORD); //(PÉTALA) SUDESTE
  arc(400, 800, 200, 200, radians(270), radians(360), CHORD); //(PÉTALA) SUDESTE
  
  noStroke();
  strokeWeight(1);
  
  arc(0, 400, 150, 150, radians(270), radians(450)); //SEMICÍRCULO AMAREL0O ESQUERDO
  arc(600, 400, 150, 150, radians(90), radians(270)); //SEMICÍRCULO AMARELO DIREITO
  
  arc(300, 300, 200, 200, radians(180), radians(360)); //SEMICÍRCULO AMARELO DE CIMA
  arc(300, 500, 200, 200, radians(0), radians(180)); //SEMICÍRCULO AMARELO DE BAIXO
  
  fill(210, 90, 70); //AZUL
  arc(300, 300, 100, 100, radians(180), radians(360)); //SEMICÍRCULO AZUL DE CIMA
  arc(300, 500, 100, 100, radians(0), radians(180)); //SEMICÍRCULO AZUL DE BAIXO
  
  fill(0, 90, 80); //VERMELHO
  
  arc(0, 400, 100, 100, radians(270), radians(450)); //SEMICÍRCULO MENOR ESQUERDO
  arc(600, 400, 100, 100, radians(90), radians(270)); //SEMICÍRCULO MENOR DIREITO
  
  fill(0, 90, 80);
  rect(width/2 - 100, height - 100, 200, 100);
  fill(0, 0, 100);
  textAlign(CENTER);
  textSize(30);
  text("BAUHAUS", 300, 745);
  text("2025", 300, 780);
  
//LINHAS PARA GRADE
  
  //for (int w=0; w <= 600; w+=100) {
  //  stroke(300, 100, 100);
  //  line(w, 0, w, 800);
  //}

  //line(25, 0, 25, 800);
  //line(50, 0, 50, 800);
  //line(75, 0, 75, 800);
  
  //for (int w=100; w <= 500; w+=10) {
  //  stroke(300, 100, 100);
  //  line(w, 0, w, 800);
  //}
  
  //line(525, 0, 525, 800);
  //line(550, 0, 550, 800);
  //line(575, 0, 575, 800);
  
  //for (int h=0; h <= 800; h+=100) {
  //  stroke(150, 100, 50);
  //  line(0, h, 600, h);
  //}
  
  //line(0, 25, 600, 25);
  //line(0, 50, 600, 50);
  //line(0, 75, 600, 75);
  
  //for (int h=100; h <= 200; h+=10) {
  //  stroke(150, 100, 50);
  //  line(0, h, 600, h);
  //}
  
  //line(0, 250, 600, 250);
  //line(0, 550, 600, 550);
  
  //for (int h=600; h <= 700; h+=10) {
  //  stroke(150, 100, 50);
  //  line(0, h, 600, h);
  //}
  //line(0, 725, 600, 725);
  //line(0, 750, 600, 750);
  //line(0, 775, 600, 775);
  
 
  //saveFrame();

}
