const byte sensor1 = 0;
const byte sensor2 = 1;
const byte sensor3 = 2;
const byte sensor4 = 3;
const byte ledRojo1 = 5;
const byte ledRojo2 = 6;
const byte ledRojo3 = 11;
const byte ledRojo4 = 12;
byte sub_periodo=1;
const byte sub_total=4;
unsigned long miliVolts;
unsigned long temperatura;
unsigned int brillo;
boolean inicio;
const byte botoninicio=13;
volatile boolean ON=LOW;
void setup(){
  Serial.begin(9600);
  pinMode(botoninicio,INPUT);
  pinMode(ledRojo1,OUTPUT);
  pinMode(ledRojo2,OUTPUT);
  pinMode(ledRojo3,OUTPUT);
  pinMode(ledRojo4,OUTPUT);
  attachInterrupt(0, parpadeo, LOW);// el 0 pin digital 2
}void loop(){
  switch(ON){
    case HIGH:
      ejecutivo_ciclico();
      break;
    case LOW:
      analogWrite(ledRojo1,0);
      analogWrite(ledRojo2,0);
      analogWrite(ledRojo3,0);
      analogWrite(ledRojo4,0);
      break;
  }
}void parpadeo(){
  ON=!ON;
}void ejecutivo_ciclico(){
  switch(sub_periodo){
    case 1:
      miliVolts = analogRead(sensor1)*5000L/1023;
      temperatura = miliVolts/10;
      brillo=map(temperatura,10,40,0,255);
      brillo = constrain(brillo,0,255);
      //frio valor brillo muy bajo
      analogWrite(ledRojo1,brillo);
      Serial.print("Temperatura calentador 1 ");
      Serial.print(temperatura);
      Serial.println(" grados");
      delay(1000);
      break;
    case 2:
      miliVolts = analogRead(sensor2)*5000L/1023;
      temperatura = miliVolts/10;
      brillo=map(temperatura,10,40,0,255);
      brillo = constrain(brillo,0,255);
      //frio valor brillo muy bajo
      analogWrite(ledRojo2,brillo);
      Serial.print("Temperatura calentador 2 ");
      Serial.print(temperatura);
      Serial.println(" grados");
      delay(1000);
      break;
    case 3:
      miliVolts = analogRead(sensor3)*5000L/1023;
      temperatura = miliVolts/10;
      brillo=map(temperatura,10,40,0,255);
      brillo = constrain(brillo,0,255);
      //frio valor brillo muy bajo
      analogWrite(ledRojo3,brillo);
      Serial.print("Temperatura calentador 3 ");
      Serial.print(temperatura);
      Serial.println(" grados");
      delay(1000);
      break;
    case 4:
      miliVolts = analogRead(sensor4)*5000L/1023;
      temperatura = miliVolts/10;
      brillo=map(temperatura,10,40,0,255);
      brillo = constrain(brillo,0,255);
      //frio valor brillo muy bajo
      analogWrite(ledRojo4,brillo);
      Serial.print("Temperatura calentador 4 ");
      Serial.print(temperatura);
      Serial.println(" grados");
      delay(1000);
      break;
  }
  sub_periodo=(sub_periodo==sub_total)?1:sub_periodo+1;
}
