int led1=11;
int led2=9;
int button=2;

int buttonState=0;

int potPin=A2;
int potValue=0;
int outputValue=0;


void setup() {
pinMode(led1,OUTPUT);
pinMode(button,INPUT);
pinMode(led2,OUTPUT);
pinMode(potPin,INPUT);

Serial.begin(9600);


}

void loop() {
  buttonState=digitalRead(button);
 
  if(buttonState==HIGH){
    digitalWrite(led2,HIGH);
  }else{
    digitalWrite(led2,LOW);
  }
   if(buttonState==HIGH){
    digitalWrite(led1,LOW);
  }else{
    digitalWrite(led1,HIGH);
  }

potValue=analogRead(potPin);
  outputValue=map(potValue,0,2250,0,2550);
  analogWrite(led2,outputValue);

Serial.println(outputValue);
Serial.println(buttonState);
}
