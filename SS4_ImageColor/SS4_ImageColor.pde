//click to desaturate
//hold for party

PImage party;
PImage peek;
PImage peek2;
PFont bold; //bold font
int num = 225;
int currentTime = 0;
int timer = 5000;
int savedTime = 0;
int peek2Y=0;
int textY=200;


void setup() {
  size(500,500);
  background(num);
  party = loadImage("party.jpg");
  peek = loadImage("peek.png");
  peek2 = loadImage("peek.png"); // for gray
  bold = createFont("Arial Bold",1);//get bold font in processing library 
  image(peek,-145,0,peek.width*1.4,peek.height*1.4);
}

void draw() {
  currentTime = millis();
  //notes for image placemnet
  //image(party, -230, -100);
  //image(peek,-145,0,peek.width*1.4,peek.height*1.4);
  //image(peek2,-145,0,peek2.width*1.4,peek2.height*1.4);
  
  //CLICK FOR DESATURATE
  if (mousePressed ==true){
    image(peek2,-145,peek2Y,peek2.width*1.4,peek2.height*1.4);
    peek2.filter(GRAY); //
    textFont(bold);
    textSize(30);
    fill(0);
    text("desaturates your cat :D",90,textY);
    //CLCIK MOUSE AND HOLD KEY AND PASS5 5 SEC FOR PARTY
    if (currentTime - savedTime > timer && keyPressed == true){
      timer= 100;
      peek2Y=600; // move peek2 out of view so party doesnt get overdrawn
      textY=600;
      print("keypressed");
      savedTime=currentTime;
      tint(random(225),random(225),random(225));
      image(party, -230, -100);
      textSize(30);
      fill(random(225), random(225), random(225));
      text("PARTY!!!",random(400),random(400));
  }
  }
  else{
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
