float posX;
int posY;
float speedX = 5;
float speedY = 1;

void setup(){
 size(600, 600);
 frameRate(60);
 posX = 300;
 posY = 40;
}

void draw(){
 background(150);
 ellipse(posX, posY, 50, 50);
 posX+= speedX;

 if ((100 < posX) && (posX < 500)){
   fill(0, 255, 0);
 }
 else{
   fill(255, 0, 0);
 }
 
 if ((posX>= width - 25) || (posX<=25)){
  speedX = - speedX; 
 }
 
 posY+= speedY;
 if ((posY>= width - 25) || (posY<=25)){
  speedY = - speedY; 
 }
 
}
