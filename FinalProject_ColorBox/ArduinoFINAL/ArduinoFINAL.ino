const int pin1 = A0;
const int pin2 = 2;
const int pin3 = 4;

int val1 = 0;
int val2 = 0;
int val3 = 0;
int inByte = 0;



void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(pin1, INPUT);
  pinMode(pin2, INPUT);
  pinMode(pin3, INPUT);
  establishContact();

}

void loop() {
  
  // put your main code here, to run repeatedly:
  if (Serial.available()>0){
    inByte = Serial.read();

    val1 = analogRead(pin1);
    val1 = val1/4;

    val2 = map(digitalRead(pin2), 0, 1, 0, 225);

    val3 = map(digitalRead(pin3), 0, 1, 0, 225);

    Serial.write(val1);
    Serial.write(val2);
    Serial.write(val3);

  }

  

}
void establishContact() {
  while (Serial.available()<=0){
    Serial.print('a');
    delay(300);
  }
}
