#include<Arduino.h>
int Z=0,Y=0,X=0,W=1;
int D,C,B,A;

void disp_7447(int D,int C,int B,int A)
{
  digitalWrite(2,A);
  digitalWrite(3,B);
  digitalWrite(4,C);
  digitalWrite(5,D);
}
void setup()
{
  pinMode(2,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(5,OUTPUT);
}
void loop()
{
  A=(!W&&!X&&!Y&&!Z)||(!W&&X&&!Y&&!Z)||(!W&&!X&&Y&&!Z)||(!W&&X&&Y&&!Z)||(!W&&!X&&!Y&&Z);
  B=(W&&!X&&!Y&&!Z)||(!W&&X&&!Y&&!Z)||(W&&!X&&Y&&!Z)||(!W&&X&&Y&&!Z);
  C=(W&&X&&!Y&&!Z)||(!W&&!X&&Y&&!Z)||(W&&!X&&Y&&!Z)||(!W&&X&&Y&&!Z);
  D=(W&&X&&Y&&!Z)||(!W&&!X&&!Y&&Z);
  disp_7447(D,C,B,A);
}

 


