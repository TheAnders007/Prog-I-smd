int qtdBolhas = 10;
int []raioBolhas = new int[qtdBolhas];
int[] velBolhas = new int[qtdBolhas];
int[] altBolhas = new int[qtdBolhas];

void setup(){
  size(500, 400);
  for (int i = 0; i < qtdBolhas; i++) raioBolhas[i] = int(random(1, 51)); //Geração Aleatória das Dimensões dos Círculos
  for (int i = 0; i < qtdBolhas; i++) velBolhas[i] = int(random(1, 11)); //Geração das Velocidades de Movimentação das Bolhas
  for (int i = 0; i < qtdBolhas; i++) altBolhas[i] = height + raioBolhas[i]; //Posição Vertical das Bolhas
}

void draw(){
  background(0, 100, 200); 
  stroke(0, 0, 255);
  fill(0, 200, 220);
  
  //Criação das Bolhas e Movimentação no eixo Y
  for (int i = 0; i < qtdBolhas; i++){
    circle(width/qtdBolhas * i, altBolhas[i], raioBolhas[i]);
    altBolhas[i]-= velBolhas[i];
  }
  
  //Reinício dos Movimentos
  for (int i = 0; i < altBolhas.length; i++){
    if (altBolhas[i] <= -raioBolhas[i]/2){
       altBolhas[i] = height + raioBolhas[i];
    }
  }
}
