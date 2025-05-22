float speedX = 3.0, speedY = 3.0;

int posX = 150, posY = 20;

void setup(){
  size(300, 300);
  textAlign(CENTER);
  colorMode(HSB, 360, 100, 100);
}

void draw(){
  background(120);
  
  
  ellipse(posX, posY, 20, 20);
  posX+=speedX;
  posY+=speedY;
  
  if (posX > width - 10 || posX < 10){
    speedX = -1.2 * speedX;
    fill(int(random(0, 360)), 100, 100);
  }
  
  if (posY > height - 10 || posY < 10){
    speedY = -1.2 * speedY;
    fill(int(random(0, 360)), 100, 100);
  }
}

void keyPressed(){
  if (keyCode == 32){
    posX = 0;
  }
} 
