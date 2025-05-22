boolean inic = true;
int cor1, cor2;

void setup(){
  size(300, 300);
  colorMode(HSB, 360, 100, 100);
  noStroke();
}

void draw(){
  background(120);
  
  if (inic) {
    cor1 = 120;
    cor2 = 25;
  } else {
    cor1 = 25;
    cor2 = 120;
   }
  
  fill(cor1, 100, 100);
  ellipse(50, 100, 100, 100);
  
  if (cor1 <= 180) fill(cor1 + 180, 100, 100);
  else fill(cor1 - 180, 100, 100);
  ellipse(50, 200, 100, 100);
  
  fill(cor2, 100, 100);
  ellipse(250, 100, 100, 100);
  
  if (cor2 <= 180) fill(cor2 + 180, 100, 100);
  else fill(cor2 - 180, 100, 100);
  ellipse(250, 200, 100, 100);
}

void mousePressed(){
  inic = !inic;
}
