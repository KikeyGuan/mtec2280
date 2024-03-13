//click to desaturate
//hold for party

PImage party;
PImage peek;
PImage peek2;
PFont bold; //bold font
PFont f1; // had to expand
PFont f2;
PFont f3;
PFont f4;
int num = 225;
int currentTime = 0;
int timer = 5000;
int savedTime = 0;
int peek2Y=0;
int textY=200;
int peekOpacity = 225;
PFont[] fonts = new PFont[5]; 
color[] color1 = new color[5]; //needs to assgin array number
color[] color2 = new color[5];
int fontRoll;
int color1Roll;
int color2Roll;

void setup() {
  size(500,500);
  background(num);
  //loading
  party = loadImage("party.jpg");
  peek = loadImage("peek.png");
  peek2 = loadImage("peek.png"); // for gray
  //get fonts in processing library and put them in array
  bold = createFont("Arial Bold",1); 
  f1 = createFont("Verdana Bold",1);
  f2 = createFont("Calibri Bold",1);
  f3 = createFont("Ink Free",1);
  f4 = createFont("Yu Gothic Bold",1);
  fonts[0] = bold;
  fonts[1] = f1;
  fonts[2] = f2;
  fonts[3] = f3;
  fonts[4] = f4;
  //color 1 array vib
  color1[0] = color(255,207,207);
  color1[1] = color(255,225,206);
  color1[2] = color(201,255,201);
  color1[3] = color(198,254,254);
  color1[4] = color(202,202,252);
  //color2 array pastel
  color2[0] = color(255,0,102);
  color2[1] = color(255,102,63);
  color2[2] = color(255,235,0);
  color2[3] = color(0,220,110);
  color2[4] = color(0,152,195);
  //position in array
  //fontRoll = int(random(fonts.length));
  //tint(225,255); // 0 no opcaity: 127 half opacity: 255 full opcaity
  image(peek,-145,0,peek.width*1.4,peek.height*1.4);
  
  
}
// test void mouse pressed
void draw() {
  fontRoll = int(random(fonts.length));
  color1Roll = int(random(color1.length));
  color2Roll = int(random(color2.length));
  currentTime = millis();
  //notes for image placemnet
  //image(party, -230, -100);
  //image(peek,-145,0,peek.width*1.4,peek.height*1.4);
  //image(peek2,-145,0,peek2.width*1.4,peek2.height*1.4);
  
  //CLICK FOR DESATURATE
  if (mousePressed ==true){
    
    //for loop doesnt happen in mouse pressed??
    //Trying to turn down the opcity of image 
    //so it looks like peek is transitioning to peek2
    for (int i = 225; i == 0; i--){
      print ("opcity");
      peekOpacity = peekOpacity - 1;
      tint(225,peekOpacity);
      image(peek,-145,0,peek.width*1.4,peek.height*1.4);
    }
    
    
    image(peek2,-145,peek2Y,peek2.width*1.4,peek2.height*1.4);
    peek2.filter(GRAY); 
    textFont(fonts[0]);
    textSize(30);
    fill(0);
    text("desaturates your cat :D",90,textY);
    
    //CLCIK MOUSE AND HOLD KEY AND PASS5 5 SEC FOR PARTY
    if (currentTime - savedTime > timer && keyPressed == true){
      timer= 100;
      peek2Y=600; // move peek2 out of view so party doesnt get overdrawn
      textY=600;
      println("keypressed");
      savedTime=currentTime;
      //tint(random(225),random(225),random(225)); //keep for testing
      tint(color2[color2Roll]);
      image(party, -230, -100);
      textFont(fonts[fontRoll]); // need to calculate random somwherelse *needs to be in the font!
      //println(fonts[fontRoll]);
      textSize(50);
      //fill(random(225), random(100), random(100));//keep for testing
      fill (color1[color1Roll]);
      text("PARTY!!!",random(400),random(350));
      
  }
  
  }
  else{
    //print("nothing");
    timer = 5000;
    savedTime=currentTime;
    peek2Y=0;
    textY=200;
    noTint();
    image(peek,-145,0,peek.width*1.4,peek.height*1.4);
  }
}

  /*
  //can't have 2 mouse pressed?
  if (mousePressed ==true){
    savedTime=currentTime;
    if(currentTime-savedTime >timer){
      tint(random(225),random(225),random(225));
      image(party, -230, -100);
      textSize(30);
      fill(0);
      text("PARTY!!!",90,200);
    }
  }
}
*/

 /*
  //moved up into if mousepressed. works but keeps getting overdrawn by peek2
  if (currentTime - savedTime > timer && keyPressed == true){
    print("keypressed");
    savedTime=currentTime;
      tint(random(225),random(225),random(225));
      image(party, -230, -100);
      textSize(30);
      fill(0);
      text("PARTY!!!",90,200);
  }
  else{
    //savedTime =currentTime;
  }
}
*/
