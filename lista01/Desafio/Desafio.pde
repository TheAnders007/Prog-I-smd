size(450, 450);
background(204);

noStroke();
ellipse(120, 120, 160, 160);
square(120, 120, 80);

ellipse(120, 320, 160, 160);
square(120, 240, 80);

ellipse(320, 120, 160, 160);
square(240, 120, 80);

ellipse(320, 320, 160, 160);
square(240, 240, 80);

fill(0);
rect(0, 0, 80, 450);

fill(127);
arc(120, 120, 160, 160, radians(120), radians(240), CHORD);
arc(120, 320, 160, 160, radians(120), radians(240), CHORD);
