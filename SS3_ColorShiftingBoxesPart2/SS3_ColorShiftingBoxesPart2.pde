//click in each box to see what hapens

//changing colors
int LightVal=245;
int DarkVal=229;
int RectX, RectY;
int RectSize = 100;

color RectColor;

boolean RectOver;

void setup() {
  size(600, 600);
  background(LightVal, 186, 186);//light pink
  //noStroke();
  //boxes
  fill(229, 125, 159);//dark pink
  rect(0, 0, 200, 200);
  rect(200, 200, 200, 200);
  rect(400, 400, 200, 200);
  rect(400, 0, 200, 200);
  rect(0, 400, 200, 200);


  //setup rect rollover
  RectColor = color(249, 234, 234); //very light pink
  RectX = width/2-50;
  RectY = height/2-50;
}

void draw() {
  //print("Mouse X: "+ mouseX, " Mouse Y: " + mouseY);
  //noStroke();
  //box inside the 4 quad
  fill(LightVal, 186, 186);
  rect(50, 50, 100, 100);
  //rect(250,250, 100,100);
  rect(450, 450, 100, 100);
  rect(50, 450, 100, 100);
  rect(450, 50, 100, 100);

  fill(DarkVal, 125, 159);
  rect(250, 50, 100, 100);
  rect(50, 250, 100, 100);
  rect(450, 250, 100, 100);
  rect(250, 450, 100, 100);
  
  fill(RectColor);
  rect(RectX,RectY,RectSize,RectSize);
  update(mouseX, mouseY);
  if (RectOver) {
    background(LightVal, 186, 186);
    fill(229, 125, 159);//dark pink
    rect(0, 0, 200, 200);
    rect(200, 200, 200, 200);
    rect(400, 400, 200, 200);
    rect(400, 0, 200, 200);
    rect(0, 400, 200, 200);
  }
  else{
  
  }
  
}


void mouseClicked() {
  //color change
  if (LightVal==245) {
    LightVal=int(random(225));
    DarkVal=int(random(225));
    print("light: ", LightVal, ",");
  } else {
    DarkVal=int(random(225));
    LightVal=int(random(225));
    print("Dark: ", DarkVal, ",");
  }
  //mouse click with limits
  if (mouseX>50 && mouseX<150 && mouseY>50 && mouseY<150) {
    for (int i=0; i<=height; i+=10) {
      strokeWeight(random(10));
      stroke(random(225), 100, 100,75);
      line(0, i, height, i);
    }
  }
  if (mouseX>250 && mouseX<350 && mouseY>50 && mouseY <150){
    for (int i=0;i<=height; i+=60){
      strokeWeight(random(15));
      stroke(100,random(225),200,50);
      noFill();
      rect(random(600),random(600),100,100);
      for (int x=0;x<=2;x+=1){
        strokeWeight(3);
        stroke(100,random(225),200,20);
        triangle(random(600),random(600),random(600),random(600),random(600),random(600));
      }
    }
  }
  if(mouseX>450 && mouseX<550 && mouseY>50 && mouseY <150){
    for (int i=0; i<=1000; i+=20){
      strokeWeight(random(10));
      stroke(random(225), 100, 100,75);
      line(0, i-400, height+800, i+600);
    }
  
  }
}

void update(int x, int y) {
  if (OverRect(RectX, RectY, RectSize, RectSize)) {
    RectOver = true;
  }
  else{
    RectOver=false;
  }
}

boolean OverRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  }
  else{
    return false;
  }
}
