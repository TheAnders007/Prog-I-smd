float posX = 300;
int posY = 40;
float speedX = 5;
float speedY = 1;

void setup(){
 size(600, 600);
 frameRate(60);
}

void draw(){
 background(150);
 
 fill(0);
 if (mouseX < width/2){
  rect(5, mouseY, 5, height/5);
 }
 else{
  rect(width - 10, mouseY, 5, height/5);
 }
 
 if ((100 < posX) && (posX < 500)){
   fill(0, 255, 0);
 }
 else{
   fill(255, 0, 0);
 }
 
 ellipse(posX, posY, 50, 50);
 posX+= speedX;
 
 if ((posX == width - 30  && ((posY >= mouseY) && (posY <= mouseY + height/5)) ) || (posX==30 && ((posY >= mouseY) && (posY <= mouseY + height/5)))){
   speedX = - speedX; 
 }
 
 posY+= speedY;
 
 if ((posY>= height - 25) || (posY<=25)){
  speedY = - speedY; 
 }
 
}
