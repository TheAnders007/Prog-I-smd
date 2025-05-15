int bx, by;
int rx, ry, larg;
int raio;
boolean left = false, right = false, up = false, down = false;
boolean gameOver = false;

void setup(){
  size(600, 600);
  bx = width/2;
  by = height/2;
  raio = 25;
  larg = int(random(50, 200));
  rx = 300;
  ry = 300;
  noStroke();
}

void draw(){
  background(0);
  if(left && bx > raio) bx= bx - 25; 
  if(right && bx < (width - raio)) bx= bx + 25; 
  if(up && by > raio) by= by - 25; 
  if(down && by < (height - raio)) by= by + 25; 
  
  if(bx > rx && bx < (rx + larg) && by > ry && by < (ry + larg)) gameOver = true;
  if (gameOver == false){
    background(0);
    square(rx, ry, larg);
    ellipse(bx, by, 2 * raio, 2 * raio);
  } else {
    textAlign(CENTER);
    text("GAME OVER", width/2, height/2);
  }
}

void keyPressed(){
  if(keyCode == LEFT && bx > raio) left = true; 
  if(keyCode == RIGHT && bx < (width - raio)) right = true; 
  if(keyCode == UP && by > raio) up = true; 
  if(keyCode == DOWN && by < (height - raio)) down = true; 
}

void keyReleased(){
  if(keyCode == LEFT) left = false; 
  if(keyCode == RIGHT) right = false; 
  if(keyCode == UP) up = false; 
  if(keyCode == DOWN) down = false; 
}
