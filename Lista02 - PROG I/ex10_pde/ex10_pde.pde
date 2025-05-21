boolean r1 = false, r2 = false, r3 = false, r4 = false;

void setup(){
  size(500, 500); 
}

void draw(){
  background(0);
  if (r1 == true) rect(50, 225, 100, 50);
  if (r2 == true) rect(150, 225, 100, 50);
  if (r3 == true) rect(250, 225, 100, 50);
  if (r4 == true) rect(350, 225, 100, 50);
}

void keyPressed(){
  if (keyCode == 49 || keyCode == 48) r1 = true;
  if (keyCode == 50 || keyCode == 48) r2 = true;
  if (keyCode == 51 || keyCode == 48) r3 = true;
  if (keyCode == 52 || keyCode == 48) r4 = true;
  println(key);
  println(r1);
}

void keyReleased(){
  if (keyCode == 49 || keyCode == 48) r1 = false;
  if (keyCode == 50 || keyCode == 48) r2 = false;
  if (keyCode == 51 || keyCode == 48) r3 = false;
  if (keyCode == 52 || keyCode == 48) r4 = false;
}
