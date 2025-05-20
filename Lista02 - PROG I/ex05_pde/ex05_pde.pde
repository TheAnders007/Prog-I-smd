void setup(){
  size(300, 300);
  noStroke();
  int cx = 150;
  int cy = 150;
  int diametro = 50 / 100;
  fill(0);
  ellipse(cx, cy, diametro, diametro);
}

//1. O programa não executou porque a variável cx que é inteira está recebendo um valor de ponto flutuante
//2. Após a correção, o programa executa, mas a elipse não aparece. Isso ocorre por que a variável diâmetro está pegando apenas a parte inteira da divisão de 50/100, que é 0.
