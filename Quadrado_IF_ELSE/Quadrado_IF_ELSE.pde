int cor;
int x, y, larg;

void setup(){
  size(300, 300);
  noStroke();
  frameRate(60);
  larg = int(random(50, 200));
  x = int(random(0, width - larg));
  y = int(random(0, height - larg));
}

void draw(){
  background(cor);
  fill(125);
  square(x, y, larg);
  if(mouseX > x && mouseX < (x + larg) && mouseY > y && mouseY < (y + larg)){
    cor = 0;
  }
   else{
    cor = 255;
  }
}
