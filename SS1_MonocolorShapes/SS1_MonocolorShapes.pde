//MonocoloredShapes By: Kikey Guan

//I want to explore monocolor,
//and how much shades i can piece together without it blending into one gloop.
//In this sketch i figured out some values of color that stood out from each other. 
//i also made some shapes and a patturn.

size(1080,720);
background(50);

//stripe
fill(255);
noStroke();
rect(0,0, 100,720);
fill(255);
noStroke();
rect(200,0, 100,720);
fill(255);
noStroke();
rect(400,0, 100,720);
fill(255);
noStroke();
rect(600,0, 100,720);
fill(255);
noStroke();
rect(800,0, 100,720);
fill(255);
noStroke();
rect(1000,0, 100,720);

noFill();
stroke(100);
strokeWeight(15);
triangle(200,200, 50,50, 500,35);


fill(50);
stroke(30);
strokeWeight(8);
ellipse(300,180, 100,100);

fill(180);
noStroke();
arc(250,250, 350,300, HALF_PI,PI);
