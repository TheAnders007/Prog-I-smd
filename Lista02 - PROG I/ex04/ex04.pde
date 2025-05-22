void setup(){
  size(400, 400);
}

void draw(){ 
  quad(0,0, width/2, 0, width, height/2, width, height);
  quad(0,0, 0, height/2, width/2, height, width, height);
}
