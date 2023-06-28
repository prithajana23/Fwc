#include<Arduino.h>
int A=0,B=0,J,K,T;

void setup()
{
	pinMode(2,INPUT);
	pinMode(3,INPUT);
	pinMode(4,OUTPUT);
	pinMode(5,OUTPUT);
	pinMode(6,OUTPUT);
	pinMode(13,OUTPUT);
}
void loop()
{
	digitalWrite(13,HIGH);
	A=digitalRead(2);
	B=digitalRead(3);
	J=(!A)||(!B);
	K=A||B;
	T=A;
	digitalWrite(4,J);
	digitalWrite(5,K);
	digitalWrite(6,T);
	digitalWrite(13,LOW);
	delay(1000);

}
