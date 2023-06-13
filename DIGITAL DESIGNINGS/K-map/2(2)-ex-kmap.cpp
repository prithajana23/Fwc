#include<Arduino.h>
int D,C,B,A;
int a,b,c,d,e,f,g;

void disp_7447(int a,int b,int c,int d,int e,int f,int g)
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
  a=(A&&!B&&!C&&!D)||(!A&&!B&&C&&!D);
  b=(C&&!D);
  c=(!A&&B&&!C&&!D);
  d=(A&&!B&&!C)||(C&&!D);
  e=(A&&!D)||(C&&!D)||(A&&!B&&!C);
  f=(!C&&!D)||(A&&B&&!D);
  g=(A&&B&&C&&!D)||(!B&&!C&&!D);

  disp_7447(a,b,c,d,e,f,g);
}

 



 


