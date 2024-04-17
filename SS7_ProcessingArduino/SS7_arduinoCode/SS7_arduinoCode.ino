//pot to change hues
//button to switch image(layers);

const int pot = A0;
//const int button = 2;
int potVal = 0;
//int buttState = 0;

void setup() {
  // put your setup code here, to run once:
  //pinMode(buttState, INPUT);
  Serial.begin(115200);

}

void loop() {
  // put your main code here, to run repeatedly:
  potVal= analogRead(pot);
  potVal=potVal/4;
  Serial.write(potVal);
  //buttState = digitalRead(button);
  //Serial.println (potVal);

}
