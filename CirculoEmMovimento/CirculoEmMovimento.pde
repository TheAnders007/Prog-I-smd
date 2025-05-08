int bx, by;
int raio;

void setup(){
  size(600, 600);
  bx = width/2;
  by = height/2;
  raio = 25;
  noStroke();
}

void draw(){
  background(0);
  ellipse(bx, by, 2 * raio, 2 * raio);
}

void keyPressed(){
  if(keyCode == LEFT && bx > raio) bx= bx - 25; 
  if(keyCode == RIGHT && bx < (width - raio)) bx= bx + 25; 
  if(keyCode == UP && by > raio) by= by - 25; 
  if(keyCode == DOWN && by < (height - raio)) by= by + 25; 
}
