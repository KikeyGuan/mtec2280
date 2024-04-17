//Kikey Guan
//Midterm Project MTEC2280 Spring 2024
//Coloring can(t)vas

//press the play button and use the numbers to color, click to invert the colors
//got a little help from the class notes (week 5, demo5 array PImage)
//a bit more help from processing reference page
//and the rest is ideas from my other assigments 


//tried adding arduino inputs. it's not working. value can be printed on arduino but not in processing.
//processing can somehow print stuff without there being a println function
//read value for pot stays at 0
//idk if i imported the processing.serial correctly. all the "serial" are not color coded in red.

import processing.serial.*;
Serial myPort;
int potVal=0;
//int buttState=0;


PImage[] cat = new PImage[8];
PImage[] kat = new PImage[9];
color[] catTint = new color[8];
color[] katTint = new color[9];
int randomNumber;
int random1;
int random2;
int random3;


void setup(){
  printArray(Serial.list());
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 115200);//problem here

  size(1000,1000);
  randomNumber = int(random(2));
  //loading cat page
  cat[0] = loadImage ("cat1.png");
  cat[1] = loadImage ("cat2.png");
  cat[2] = loadImage ("cat3.png");
  cat[3] = loadImage ("cat4.png");
  cat[4] = loadImage ("cat5.png");
  cat[5] = loadImage ("cat6.png");
  cat[6] = loadImage ("cat7.png");
  cat[7] = loadImage ("cat8.png");
  //loading kat page
  kat[0] = loadImage ("kat1.png");
  kat[1] = loadImage ("kat2.png");
  kat[2] = loadImage ("kat3.png");
  kat[3] = loadImage ("kat4.png");
  kat[4] = loadImage ("kat5.png");
  kat[5] = loadImage ("kat6.png");
  kat[6] = loadImage ("kat7.png");
  kat[7] = loadImage ("kat8.png");
  kat[8] = loadImage ("kat9.png");
  //kat color value holder
  katTint[0] = color(225);
  katTint[1] = color(225);
  katTint[2] = color(225);
  katTint[3] = color(225);
  katTint[4] = color(225);
  katTint[5] = color(225);
  katTint[6] = color(225);
  katTint[7] = color(225);
  katTint[8] = color(225);
  //cat color value holder
  catTint[0] = color(225);
  catTint[1] = color(225);
  catTint[2] = color(225);
  catTint[3] = color(225);
  catTint[4] = color(225);
  catTint[5] = color(225);
  catTint[6] = color(225);
  catTint[7] = color(225);
  
  if(randomNumber ==0){
    cat();
    
  }
  if(randomNumber==1){
    kat();
  }
  
}

void draw(){
  if(myPort.available()>0){
    potVal = myPort.read();
  }
  println (potVal);
  random1 = potVal;//play
  random2 = 200; //play
  random3 = 200; //play
  
  
  //println(randomNumber);
  //////////////////////////////////////////////////////////
  //for each drawing when you press a number it'll change color
  if(randomNumber ==0){
    //CAT
    if(keyPressed){
      if(key == '1'){
        tint(random1,random2,random3);
        catTint[0] = color(random1,random2,random3);
        image(cat[0],0,0);
        noTint();
        for(int i=0 ; i<=7 ; i++){
        tint(catTint[i]);
        image(cat[i],0,0);
      }
      }
      
      if(key == '2'){
        tint(random1,random2,random3);
        catTint[1] = color(random1,random2,random3);
        image(cat[1],0,0);
        noTint();
        for(int i=0 ; i<=7 ; i++){
        tint(catTint[i]);
        image(cat[i],0,0);
      }
      }
      
      if(key == '3'){
        tint(random1,random2,random3);
        catTint[2] = color(random1,random2,random3);
        image(cat[2],0,0);
        noTint();
        for(int i=0 ; i<=7 ; i++){
        tint(catTint[i]);
        image(cat[i],0,0);
      }
      }
      
      if(key == '4'){
        tint(random1,random2,random3);
        catTint[3] = color(random1,random2,random3);
        image(cat[3],0,0);
        noTint();
        for(int i=0 ; i<=7 ; i++){
        tint(catTint[i]);
        image(cat[i],0,0);
      }
      }
      
      if(key == '5'){
        tint(random1,random2,random3);
        catTint[4] = color(random1,random2,random3);
        image(cat[4],0,0);
        noTint();
        for(int i=0 ; i<=7 ; i++){
        tint(catTint[i]);
        image(cat[i],0,0);
      }
      }
      
      if(key == '6'){
        tint(random1,random2,random3);
        catTint[5] = color(random1,random2,random3);
        image(cat[5],0,0);
        noTint();
        for(int i=0 ; i<=7 ; i++){
        tint(catTint[i]);
        image(cat[i],0,0);
      }
      }
      
      if(key == '7'){
        tint(random1,random2,random3);
        catTint[6] = color(random1,random2,random3);
        image(cat[6],0,0);
        noTint();
        for(int i=0 ; i<=7 ; i++){
        tint(catTint[i]);
        image(cat[i],0,0);
      }
      }
      
      if(key == '8'){
        tint(random1,random2,random3);
        catTint[7] = color(random1,random2,random3);
        image(cat[7],0,0);
        noTint();
        for(int i=0 ; i<=7 ; i++){
        tint(catTint[i]);
        image(cat[i],0,0);
      }
      }
      
      if(key == '0'){
        for(int i=0 ; i<=7 ; i++){
        //randomNumber = 1;
        noTint();
        image(cat[i],0,0);
      }
      }
      else{
        //tint(random1,random2,random3);
      }
      
  }
  }
  //////////////////////////////////////////////////////////////
  //for each drawing when you press a number it'll change color
  if(randomNumber==1){
    //KAT
    if(keyPressed){
      if(key == '1'){
        println(random1);
        tint(random1,random2,random3);
        katTint[0] = color(random1,random2,random3);
        image(kat[0],0,0);
        noTint();
        for(int i=0 ; i<=8 ; i++){
        tint(katTint[i]);
        image(kat[i],0,0);
      }
      }
      
      if(key == '2'){
        tint(random1,random2,random3);
        katTint[1] = color(random1,random2,random3);
        image(kat[1],0,0);
        noTint();
        for(int i=0 ; i<=8 ; i++){
        tint(katTint[i]);
        image(kat[i],0,0);
      }
      }
      
      if(key == '3'){
        tint(random1,random2,random3);
        katTint[2] = color(random1,random2,random3);
        image(kat[2],0,0);
        noTint();
        for(int i=0 ; i<=8 ; i++){
        tint(katTint[i]);
        image(kat[i],0,0);
      }
      }
      
      if(key == '4'){
        tint(random1,random2,random3);
        katTint[3] = color(random1,random2,random3);
        image(kat[3],0,0);
        noTint();
        for(int i=0 ; i<=8 ; i++){
        tint(katTint[i]);
        image(kat[i],0,0);
      }
      }
      
      if(key == '5'){
        tint(random1,random2,random3);
        katTint[4] = color(random1,random2,random3);
        image(kat[4],0,0);
        noTint();
        for(int i=0 ; i<=8 ; i++){
        tint(katTint[i]);
        image(kat[i],0,0);
      }
      }
      
      if(key == '6'){
        tint(random1,random2,random3);
        katTint[5] = color(random1,random2,random3);
        image(kat[5],0,0);
        noTint();
        for(int i=0 ; i<=8 ; i++){
        tint(katTint[i]);
        image(kat[i],0,0);
      }
      }
      
      if(key == '7'){
        tint(random1,random2,random3);
        katTint[6] = color(random1,random2,random3);
        image(kat[6],0,0);
        noTint();
        for(int i=0 ; i<=8 ; i++){
        tint(katTint[i]);
        image(kat[i],0,0);
      }
      }
      
      if(key == '8'){
        tint(random1,random2,random3);
        katTint[7] = color(random1,random2,random3);
        image(kat[7],0,0);
        noTint();
        for(int i=0 ; i<=8 ; i++){
        tint(katTint[i]);
        image(kat[i],0,0);
      }
      }
      
      if(key == '9'){
        tint(random1,random2,random3);
        katTint[8] = color(random1,random2,random3);
        image(kat[8],0,0);
        noTint();
        for(int i=0 ; i<=8 ; i++){
        tint(katTint[i]);
        image(kat[i],0,0);
      }
      }
      
      if(key == '0'){
        for(int i=0 ; i<=8 ; i++){
        //randomNumber = 0;
        noTint();
        image(kat[i],0,0);
      }
      }
      
  }
  }
  
 }


void mouseClicked(){
  filter(INVERT);

}

void kat(){
  for(int i=0 ; i<=8 ; i++){
    image(kat[i],0,0);
  }
}

void cat(){
  for(int i=0 ; i<=7 ; i++){
    image(cat[i],0,0);
  }
}
