size(840, 150);

for (int i = 0; i < 14; i++) {
  fill(255);
  rect(i * 60, 0, 60, height);
  if (i % 7 != 0 && i % 7 != 3){
     fill(0);
     rect(i * 60 - 35/2, 0, 35, height * 3/5);
  }
}
