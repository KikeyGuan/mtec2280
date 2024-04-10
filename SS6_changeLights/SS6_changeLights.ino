const int pin1=13;
const int pin2=11;
const int pin3=10;
const int pin4=9;
const int pin5=6;
const int pin6=5;

const int button=2;
int buttState=0;

int dim = 20;
int n1 = 100;
int n2 = 80;
int n3 = 60;
int n4 = 40;
int n5 = 20;

void setup() {
  // put your setup code here, to run once:
  pinMode(buttState, INPUT);


}

void loop() {
  buttState = digitalRead(button);
  // put your main code here, to run repeatedly:
  if (buttState ==HIGH){
    digitalWrite(pin1,HIGH);//keep on
    analogWrite(pin2,n1);
    analogWrite(pin3,n2);
    analogWrite(pin4,n3);
    analogWrite(pin5,n4);
    analogWrite(pin6,n5);
    delay(1000);
    analogWrite(pin2,n1-dim);
    analogWrite(pin3,n2+dim);
    analogWrite(pin4,n3+dim);
    analogWrite(pin5,n4+dim);
    analogWrite(pin6,n5+dim);
    delay(1000);
    analogWrite(pin2,n1-dim);
    analogWrite(pin3,n2-dim);
    analogWrite(pin4,n3+dim);
    analogWrite(pin5,n4+dim);
    analogWrite(pin6,n5+dim);
    delay(1000);
    analogWrite(pin2,n1-dim);
    analogWrite(pin3,n2-dim);
    analogWrite(pin4,n3-dim);
    analogWrite(pin5,n4+dim);
    analogWrite(pin6,n5+dim);
    delay(1000);
    analogWrite(pin2,n1-dim);
    analogWrite(pin3,n2-dim);
    analogWrite(pin4,n3-dim);
    analogWrite(pin5,n4-dim);
    analogWrite(pin6,n5+dim);
    delay(1000);
    analogWrite(pin2,n1+dim);
    analogWrite(pin3,n2-dim);
    analogWrite(pin4,n3-dim);
    analogWrite(pin5,n4-dim);
    analogWrite(pin6,n5-dim);
    delay(1000);
    analogWrite(pin2,n1+dim);
    analogWrite(pin3,n2+dim);
    analogWrite(pin4,n3-dim);
    analogWrite(pin5,n4-dim);
    analogWrite(pin6,n5-dim);
    delay(1000);
    analogWrite(pin2,n1+dim);
    analogWrite(pin3,n2+dim);
    analogWrite(pin4,n3+dim);
    analogWrite(pin5,n4-dim);
    analogWrite(pin6,n5-dim);
    delay(1000);
    analogWrite(pin2,n1+dim);
    analogWrite(pin3,n2+dim);
    analogWrite(pin4,n3+dim);
    analogWrite(pin5,n4+dim);
    analogWrite(pin6,n5-dim);


  }
  else{
    digitalWrite(pin1,LOW);
    analogWrite(pin2,0);
    analogWrite(pin3,0);
    analogWrite(pin4,0);
    analogWrite(pin5,0);
    analogWrite(pin6,0);
  }


}
