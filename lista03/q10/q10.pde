size(400, 400);
background(255);

for (int i = 0; i < 50; i++){
  line(i * 400/25, 0, i * 400/25 - width, height); 
  line((i - 25) * 400/25, 0, (i - 25) * 400/25 + width, height); 
}
