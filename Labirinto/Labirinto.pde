PImage peca0, peca1, peca2, peca3, peca4, peca5, peca6, peca7, bichinho;
int posX, posY;

int[][] mapa = {{0, 1, 1, 1, 1, 1, 1, 2},
  {5, 7, 7, 7, 7, 7, 7, 5},
  {5, 7, 0, 1, 1, 2, 7, 5},
  {5, 7, 5, 7, 7, 5, 7, 5},
  {5, 7, 5, 7, 7, 7, 7, 5},
  {5, 7, 3, 1, 2, 7, 7, 5},
  {5, 7, 7, 7, 5, 7, 7, 5},
  {3, 1, 1, 7, 6, 1, 1, 4}
};

void setup() {
  size(256, 256);
  peca0 = loadImage("peca0.png");
  peca1 = loadImage("peca1.png");
  peca2 = loadImage("peca2.png");
  peca3 = loadImage("peca3.png");
  peca4 = loadImage("peca4.png");
  peca5 = loadImage("peca5.png");
  peca6 = loadImage("peca6.png");
  peca7 = loadImage("peca7.png");
  bichinho = loadImage("bichinho.png");
  
  posX = 4;
  posY = 3;
}

void mostraMapa() {
  for (int i = 0; i <8; i++) {
    for (int j = 0; j < 8; j++) {
      switch(mapa[j][i]) {
      case 0:
        peca0.resize(32, 32);
        image(peca0, i*32, j*32);
        break;
      case 1:
        peca1.resize(32, 32);
        image(peca1, i*32, j*32);
        break;
      case 2:
        peca2.resize(32, 32);
        image(peca2, i*32, j * 32);
        break;
      case 3:
        peca3.resize(32, 32);
        image(peca3, i*32, j * 32);
        break;
      case 4:
        peca4.resize(32, 32);
        image(peca4, i*32, j * 32);
        break;
      case 5:
        peca5.resize(32, 32);
        image(peca5, i*32, j * 32);
        break;
      case 6:
        peca6.resize(32, 32);
        image(peca6, i*32, j * 32);
        break;
      case 7:
        peca7.resize(32, 32);
        image(peca7, i*32, j * 32);
        break;
      }
    }
  }
  if (posX == 3 && posY ==7){ 
    println("ACHOU!!");
    fill(0, 200, 0);
  }
}

void draw(){
  mostraMapa();
  ellipseMode(CORNER);
  ellipse(posX * 32, posY * 32, 30, 30);
}

void keyPressed(){
  if (keyCode == 37 && mapa[posY][posX - 1] == 7){
     posX-=1; 
  }
  else if (keyCode == 38 && mapa[posY - 1][posX] == 7){
     posY-=1; 
  }
  else if (keyCode == 39 && mapa[posY][posX + 1] == 7){
     posX+=1; 
  }
  else if (keyCode == 40 && mapa[posY + 1][posX] == 7){
     posY+=1; 
  }
}
