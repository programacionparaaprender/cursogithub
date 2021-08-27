const int led=3;
const int led2=5;
const int pot=0;
void setup(){
  pinMode(led,OUTPUT);
  pinMode(led2,OUTPUT);
}void loop(){
  for(int brillo=0;brillo<256;brillo++){
    analogWrite(led,brillo);
    int valor=analogRead(pot);
    int brilloled = map(valor, 0, 1023, 0, 255);
    analogWrite(led2,brilloled);
    delay(10);
  }
  for(int brillo2=255;brillo2>=0;brillo2--){
    analogWrite(led,brillo2);
    int valor=analogRead(pot);
    int brilloled = map(valor, 0, 1023, 0, 255);
    analogWrite(led2,brilloled);
    delay(10);
  }
}
