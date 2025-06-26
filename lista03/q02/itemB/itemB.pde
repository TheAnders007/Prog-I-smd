size(500, 200);

for (int i = 0; i < 10; i++){
   if (i % 2 == 1) fill(0);
   else fill(255);
   ellipse(25 + i * 50, height/2, 25, 25);
}
