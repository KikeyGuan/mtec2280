//final project: coloring book
//Kikey Guan
//Use color controller to change colors and mouse to draw

//used this code for guide for button: https://processing.org/examples/button.html




import processing.serial.*;
Serial myPort;

int[] serialValList = new int[3];
int serialCount = 0;
boolean firstContact = false;
int val1, val2, val3; //val2 = 2 RESET BUTTON, val3 = 4 COLORCHANGE
boolean Hit0;
int circlesize = 10;
int red, green, blue;
int saveRed, saveBlue,saveGreen;
int r,g,b;
int colorSwitch;
int boxX = 70;//70
int boxY = 84;
int boxSize = 20;
boolean saveBox = false;


PGraphics pg;
PImage car;




void setup() {
  size(600,600);
  background(225);
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  pg = createGraphics(40, 40);
  car = loadImage("car.png");
}




void draw() {
  update(mouseX,mouseY);
  pg.beginDraw();
  image(car,0,0);
  pg.endDraw();
  image(pg, 20,20);
  //need a boolean to check if pot hits 0
  if(val1 == 0){
    Hit0 = true;
  }
  
  //value for color changes
  if(val3 == 225){
    colorSwitch ++;
  }
  if(colorSwitch == 4){
    colorSwitch = 1;
  }
  
  
  //changing from red, green, blue
  if(colorSwitch == 1 && Hit0 == true){
    red = val1;
    r = 1;
    g = 0;
    b = 0;
    
    //saveRed = red;
    //green = saveGreen;
    //blue = saveBlue;
  }
  else{
    //Hit0 = false; //keeps Hit0 at false, no resets at pot
  }
  if(colorSwitch == 2 && Hit0 == true){
    green = val1;
    r = 0;
    g = 1;
    b = 0;
    
    //saveGreen = green;
    //red = saveRed;
    //blue = saveBlue;
  }
  else{
    //Hit0 = false;
  }
  if(colorSwitch == 3 && Hit0 == true){
    blue = val1;
    r = 0;
    g = 0;
    b = 1;

    //saveBlue = blue;
    //red = saveRed;
    //green = saveGreen;
  }
  else{
    //Hit0 = false;
  }
  
  //check color
  //DATA BOX----------------
  fill(225);
  rect(0,0,120,100);
  fill(0);
  textSize(20);
  text("Red: "+red+" "+r+ "    Green: "+green+" "+g+"    Blue: "+blue+" "+b, 10, 10,130,100);
  stroke(1);
  fill(red, green, blue);
  circle(100,84,20);
  fill(saveRed,saveGreen,saveBlue);
  circle(boxX,boxY,boxSize);
  
  //draw!!!!!!!!!!!!
  if (mousePressed == true) {
    //draw
    noStroke();
    fill(red, green, blue);
    circle(mouseX,mouseY,circlesize);
  }
  
  if(val2 == 225){
    background(225);
  } //probs has to double press
  
  //checking for save button
  if (saveBox){
    //saveRed = 225;
    //saveGreen = 225;
    //saveBlue = 225;
  }
  
  
  
  println("color: " + colorSwitch + "    val: "+val1 + "    hit0: " +Hit0);
  println("    red: " +red + "    green: " +green+ "    blue: " +blue);
  //println(saveBox);
}

//saving colors, works! but val1 will always over wright the value it's on, but the color value is still saved
//to get the saved color back player will need to adjust val1 to match the saved color.
void mousePressed(){
  if(saveBox && mouseButton == LEFT){
    saveRed = red;
    saveGreen = green;
    saveBlue = blue;
    //color save boxr, boxg, boxb
  }
  // get color back but one value will only show the val1
  if(saveBox && mouseButton == RIGHT){
    red = saveRed;
    green = saveGreen;
    blue = saveBlue;
  }
}

void update(int x,int y){
  if(overBox(boxX,boxY,boxSize)){
    saveBox = true;
  }
  else{
    saveBox = false;
  }
  
}


boolean overBox(int x, int y, int boxSize){
  if (mouseX>=x-10 && mouseX<=boxSize+x && mouseY>=y-10 && mouseY<=boxSize+y){
    return true;
  }
  else {
    return false;
  }
}




void serialEvent(Serial myPort) {
  int inByte = myPort.read();
  if(firstContact == false){
    if(inByte == 'a'){
      myPort.clear();
      firstContact = true;
      myPort.write('a');
    }
  }
  else{
    serialValList[serialCount] = inByte;
    serialCount ++;
    if(serialCount>2){
      val1 = serialValList[0]; //pot, change color value
      val2 = serialValList[1]; //button, change red to green to blue 
      val3 = serialValList[2]; //button, reset
      myPort.write('a');
      serialCount = 0;
    }
  }

}
