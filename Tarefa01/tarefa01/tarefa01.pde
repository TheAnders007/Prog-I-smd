void setup() {
  size(1000, 600);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  background(60, 10, 100);
  noStroke();
  
  //ESTOU USANDO O PADRÃO DE COMENTÁRIO "QUADRADO LXC", ONDE L É A LINHA E C É A COLUNA
  
  //QUADRADO 1x1
  ellipse(75, 25, 10, 10);
  ellipse(50, 50, 10, 10);
  ellipse(75, 50, 10, 10);
  ellipse(25, 75, 10, 10);
  ellipse(50, 75, 10, 10);
  ellipse(75, 75, 10, 10);
  fill(60, 50, 100); //AMARELO
  triangle(0, 0, 100, 0, 0, 100);
  fill(240, 50, 100); //ROXO
  quad(0, 0, 25, 0, 25, 75, 0, 100);
  quad(50, 0, 75, 0, 75, 25, 50, 50);
  
  //QUADRADO 1X2
  arc(200, 100, 200, 200, radians(180), radians(270));
  
  //QUADRADO 1X3
  arc(200, 0, 200, 200, radians(0), radians(90));
  
  //QUADRADO 1X4
  fill(60, 50, 100);
  triangle(330, 0, 300, 30, 350, 50);
  triangle(330, 100, 300, 70, 350, 50);
  triangle(370, 0, 400, 30, 350, 50);
  triangle(400, 70, 370, 100, 350, 50);
  
  //QUADRADO 1X5
  fill(240, 50, 100);
  arc(450, 0, 100, 100, 0, PI);
  arc(450, 100, 100, 100, PI, radians(360));
  
  //QUADRADO 1X6
  arc(500, 50, 100, 100, radians(270), radians(450));
  arc(600, 50, 100, 100, radians(90), radians(270));
  
  //QUADRADO 1X7
  fill(60, 50, 100);
  triangle(630, 0, 600, 30, 650, 50);
  triangle(630, 100, 600, 70, 650, 50);
  triangle(670, 0, 700, 30, 650, 50);
  triangle(700, 70, 670, 100, 650, 50);
  
  //QUADRADO 1X8
  fill(240, 50, 100);
  arc(800, 0, 200, 200, radians(90), radians(180));
  
  //QUADRADO 1X9
  arc(800, 100, 200, 200, radians(270), radians(360));
  
  //QUADRADO 1x10
  ellipse(925, 25, 10, 10);
  ellipse(950, 50, 10, 10);
  ellipse(925, 50, 10, 10);
  ellipse(925, 75, 10, 10);
  ellipse(950, 75, 10, 10);
  ellipse(975, 75, 10, 10);
  fill(60, 50, 100); //AMARELO
  triangle(1000, 0, 900, 0, 1000, 100);
  fill(240, 50, 100); //ROXO
  quad(1000, 0, 975, 0, 975, 75, 1000, 100);
  quad(950, 0, 925, 0, 925, 25, 950, 50);
  
  //LINHA 2
  rect(0, 100, 1000, 10);
  rect(0, 120, 1000, 10);
  rect(0, 140, 1000, 10);
  rect(0, 160, 1000, 10);
  rect(0, 180, 1000, 10);
  
  //QUADRADO 2X1
  fill(60, 50, 100);
  stroke(60, 50, 100);
  strokeWeight(2);
  arc(0, 200, 200, 200, radians(270), radians(360), CHORD);
  arc(100, 100, 200, 200, radians(90), radians(180), CHORD);
  
  //QUADRADO 2X10
  arc(1000, 200, 200, 200, radians(180), radians(270), CHORD);
  arc(900, 100, 200, 200, 0, radians(90), CHORD);
  noStroke();
  strokeWeight(1);
  
  
  //QUADRADO 3X5
  stroke(240, 50, 100); //ROXO
  arc(500, 200, 200, 200, radians(90), radians(180), CHORD);
  arc(400, 300, 200, 200, radians(270), radians(360), CHORD);
  noStroke();
  
  //QUADRADO 3X6
  stroke(240, 50, 100); //ROXO
  strokeWeight(2);
  arc(500, 200, 200, 200, radians(0), radians(90), CHORD);
  arc(600, 300, 200, 200, radians(180), radians(270), CHORD);
  strokeWeight(1);
  noStroke();
  
  //QUADRADO 4X5
  stroke(240, 50, 100); //ROXO
  strokeWeight(2);
  arc(500, 400, 200, 200, radians(180), radians(270), CHORD);
  arc(400, 300, 200, 200, radians(0), radians(90), CHORD);
  strokeWeight(1);
  noStroke();
  
  //QUADRADO 3X6
  stroke(240, 50, 100); //ROXO
  //strokeWeight(2);
  arc(500, 400, 200, 200, radians(270), radians(360), CHORD);
  arc(600, 300, 200, 200, radians(90), radians(180), CHORD);
  noStroke();
  
  //LINHA 5
  rect(0, 410, 1000, 10);
  rect(0, 430, 1000, 10);
  rect(0, 450, 1000, 10);
  rect(0, 470, 1000, 10);
  rect(0, 490, 1000, 10);
  
  //QUADRADO 6X1
  ellipse(75, 575, 10, 10);
  ellipse(50, 550, 10, 10);
  ellipse(75, 550, 10, 10);
  ellipse(25, 525, 10, 10);
  ellipse(50, 525, 10, 10);
  ellipse(75, 525, 10, 10);
  fill(60, 50, 100); //AMARELO
  triangle(0, 600, 100, 600, 0, 500);
  fill(240, 50, 100); //ROXO
  quad(0, 600, 25, 600, 25, 525, 0, 500);
  quad(50, 600, 75, 600, 75, 575, 50, 550);
  
  //QUADRADO 6X10
  ellipse(975, 525, 10, 10);
  ellipse(950, 550, 10, 10);
  ellipse(925, 550, 10, 10);
  ellipse(925, 525, 10, 10);
  ellipse(950, 525, 10, 10);
  ellipse(925, 575, 10, 10);
  fill(60, 50, 100); //AMARELO
  triangle(900, 600, 1000, 500, 1000, 600);
  fill(240, 50, 100); //ROXO
  quad(975, 600, 1000, 600, 1000, 500, 975, 525);
  quad(950, 600, 925, 600, 925, 575, 950, 550);







//  for (int w=0; w <= 1000; w+=50) {
//    //stroke(0, 0, 0);
//    //fill(0, 0, 0);
//    line(w, 0, w, 600);
//  }
//  for (int h=0; h <= 600; h+=50) {
//    //stroke(0, 0, 0);
//    //fill(0, 0, 0);
//    line(0, h, 1000, h);
//  }
}
