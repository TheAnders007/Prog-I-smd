size(360, 400);
colorMode(HSB, 360, 100, 100);

for (int i = 0; i < 360; i ++){
  stroke(i, 100, 100);
  line(i, 0, i, height); 
}
