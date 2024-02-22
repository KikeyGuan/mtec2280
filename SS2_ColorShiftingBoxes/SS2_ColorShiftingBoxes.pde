//changing colors
int LightVal=245;
int DarkVal=229;

void setup() {
  size(400,400);
  background(LightVal,186,186);//light pink
  noStroke();
  //boxes
  fill(229,125,159);//dark pink
  rect(0,0, 200,200);
  rect(200,200, 200,200);
  
  fill(245,186,186);
  rect(200,0,200,200);
  rect(0,200,200,200);
}

void draw() {
  noStroke();
  //box inside the 4 quad
  fill(LightVal,186,186);
  rect(50,50, 100,100);
  rect(250,250, 100,100);
  
  fill(DarkVal,125,159);
  rect(250,50, 100,100);
  rect(50,250, 100,100);

  
}


void mouseClicked() {
  //color change
  if (LightVal==245){
    LightVal=int(random(225));
    DarkVal=int(random(225));
    print("light: ", LightVal,",");
    }
  else{
    DarkVal=int(random(225));
    LightVal=int(random(225));
    print("Dark: ", DarkVal, ",");
  }
}
