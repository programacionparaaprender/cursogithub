/*
brillo=map(temperatura,10,40,0,255);
  brillo = constrain(brillo,0,255);
*/
const int MAX=500;
int x[MAX];
const int T=2;
int wc=2;
int n=0;
void setup(){
  Serial.begin(9600);
  int cont=0;
  for(int brillo=0;brillo<256;brillo++){
    x[cont++]=brillo;
  }
  for(int brillo2=255;brillo2>=0;brillo2--){
    x[cont++]=brillo2;
  }

}void loop(){
  n=0;
  for(int i=0;i<MAX;i++){
    zeroorderhold(i);
  }
}void zeroorderhold(int t){
  int valor=x[n]*(T*wc/PI)*(sin(wc*(t-T*n))/wc*(t-T*n));
  Serial.println(valor);
  n++;
}
/*
int rect(int t){
  if(t>0.5){
    return 0;
  }else if(t==0.5){
    return 0.5;
  }else if(t<0.5){
    return 1;
  }
}
*/
