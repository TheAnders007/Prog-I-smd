size(500, 500);
background(255);
noStroke();

for (int i = 0; i < 9; i++){
   fill(120);
   rect(i * 50, (i + 1) * 50, 50, height - (i + 1) * 50);
}
