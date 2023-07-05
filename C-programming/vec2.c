#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#include"vec.h"
/*float fun1(float y,float z){
	return 2.0*y*cos(z);
}
float fun2(float x,float y){
	return pow(x,2)-pow(y,2);
}
float fun3(float x,float fun1){
	return 2.0*x-fun1;
}
float fun4(float l1){
	return cos(l1);
}
float fun5(float l2){
	return sin(l2);
}
float fun(float m, float n){
	return  m/n;
}
float a1(float o,float l){
	return o*l;
}
int w(float x,int y){
	return x*y;
}*/
int main(){
	float a=7.0;
	float k=13.0;
	float theta=75.0*3.1416/180.0;
printf("Value of theta is %f\n",theta);
float fun1r=fun1(a,theta);
float fun2r=fun2(k,a);
float fun3r=fun3(k,fun1(a,theta));
float result = fun(fun2r,fun3r);
printf("Value of C is %f\n",result);
float fun4r=fun4(theta);
float fun5r=fun5(theta);
float array[]={fun4r,fun5r};
int e3[]={0,0};
int e1[]={1,0};
int w1=w(a,e1[0]);
int w2=w(a,e1[1]);
float a_1[]={a1(result,array[0]),a1(result,array[1])};
printf("Value of the x-coordinates of A is:%f\n",a_1[0]);
printf("Value of the y-coordinates of A is:%f\n",a_1[1]);
printf("Value of the x-coordinates of B is:%d\n",e3[0]);
printf("Value of the y-coordinates of B is:%d\n",e3[1]);
printf("Value of the x-coordinates of C is:%d\n",w1);
printf("Value of the y-coordinates of C is:%d\n",w2);
return 0;
}

