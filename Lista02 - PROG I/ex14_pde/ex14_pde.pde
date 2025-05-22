int click = 0; 

void setup(){
  size(300, 300);
  textAlign(CENTER);
  textSize(20);
}

void draw(){
  background(120);
  text(click, 150, 150);
}

void mousePressed(){
  click+= 1;
  if (click == 11) click = 0;
}
