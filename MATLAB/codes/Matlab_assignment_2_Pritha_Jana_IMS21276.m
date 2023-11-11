%Question-1.a)
clear all;
close all;
format short 
h=0.1;
x=0:h:1;
N=length(x)
y(1)=0.5;
f=@(x,y) y-x;
ye=@(x) x+1-0.5.*exp(x);
for i=1:N-1;
    y(i+1)=y(i)+h*f(x(i),y(i))
end
exactsol=ye(x);
error=max(abs(y-ye(x)))
plot(x,y,'-*',x,exactsol,'r')



% Question- 1)b)
clear all;
close all;
format short 
h=0.05;
x=0:h:1;
N=length(x)
y(1)=0.5;
f=@(x,y) y-x;
ye=@(x) x+1-0.5.*exp(x);
for i=1:N-1;
    y(i+1)=y(i)+h*f(x(i),y(i))
end
exactsol=ye(x);
error=max(abs(y-ye(x)))
plot(x,y,'-*',x,exactsol,'r')




% Question-2)
clear all;
close all;
format short 
h=0.1;
x=0:h:1;
N=length(x);
y(1)=0.5;
f=@(x,y) y-x;
ye=@(x) x+1-0.5.*exp(x);
for i=1:N-1;
    y(i+1)=(y(i)+(h/2)*(f(x(i),y(i))-x(i+1)))/(1-(h/2))
end
exactsol=ye(x);
error=max(abs(y-ye(x)))
plot(x,y,'-*',x,exactsol,'r')




%Questin-3)
%RK methods of order 2
clear all;
close all;
format short 
h=0.1;
x=0:h:1;
N=length(x)
y(1)=0.5;
f=@(x,y) y-x;
ye=@(x) x+1-0.5.*exp(x);
for i=1:N-1;
    k1=h*(f(x(i),y(i)));
    k2=h*(f((x(i)+(1/2)),(y(i)+(k1/2))));
    k3=h*(f((x(i)+(h/2)),(y(i)+(k2/2))));
    k4=h*f((x(i)+h),(y(i)+k3));
    y(i+1)=(y(i))+h*(1/2)*(k1+k2)
end
exactsol=ye(x);
error=max(abs(y-ye(x)))
plot(x,y,'-*',x,exactsol,'r')



%RK methods of order 3
clear all;
close all;
format short 
h=0.1;
x=0:h:1;
N=length(x)
y(1)=0.5;
f=@(x,y) y-x;
ye=@(x) x+1-0.5.*exp(x);
for i=1:N-1;
    k1=h*(f(x(i),y(i)));
    k2=h*(f((x(i)+(1/2)),(y(i)+(k1/2))));
    k3=h*(f((x(i)+(h/2)),(y(i)+(k2/2))));
    k4=h*f((x(i)+h),(y(i)+k3));
   y(i+1)=(y(i))+(h/6)*(k1+(4*k2)+k3)
end
exactsol=ye(x);
error=max(abs(y-ye(x)))
plot(x,y,'-*',x,exactsol,'r')



%RK methods of order 4
clear all;
close all;
format short 
h=0.1;
x=0:h:1;
N=length(x)
y(1)=0.5;
f=@(x,y) y-x;
ye=@(x) x+1-0.5.*exp(x);
for i=1:N-1;
    k1=h*(f(x(i),y(i)));
    k2=h*(f((x(i)+(1/2)),(y(i)+(k1/2))));
    k3=h*(f((x(i)+(h/2)),(y(i)+(k2/2))));
    k4=h*f((x(i)+h),(y(i)+k3));
    y(i+1)=(y(i))+(1/6)*(k1+(2*k2)+(2*k3)+k4)
end
exactsol=ye(x);
error=max(abs(y-ye(x)))
plot(x,y,'-*',x,exactsol,'r')




% Question-4)
%Euler Method
clear all
close all;
format long
for lel=1:4
h=1*10^(-lel);
H(lel)=h;
x=0:h:1;
N=length(x);
y(1)=0.5; 
f=@(x,y)  y-x;
ye=@(x)  x+1-0.5.*exp(x);
for i=1:N-1;
    y(i+1)=y(i)+h*f(x(i),y(i));
end

exactsol=ye(x);
error(lel)=max(abs(y-exactsol))
end

for k=1:lel-1
ordercg(k)=log(error(k)/error(k+1))/log(H(k)/H(k+1))
end
loglog(H,error,'-*')




%Rk Method
clear all
close all;
format long
for lel=1:4
h=1*10^(-lel);
H(lel)=h;
x=0:h:1;
N=length(x);
y(1)=0.5; 
f=@(x,y)  y-x;
ye=@(x)  x+1-0.5.*exp(x);
for i=1:N-1;
    k1=h*(f(x(i),y(i)));
    k2=h*(f((x(i)+(1/2)),(y(i)+(k1/2))));
    k3=h*(f((x(i)+(h/2)),(y(i)+(k2/2))));
    k4=h*f((x(i)+h),(y(i)+k3));
    y(i+1)=(y(i))+(1/6)*(k1+(2*k2)+(2*k3)+k4);
end

exactsol=ye(x);
error(lel)=max(abs(y-exactsol))
end

for k=1:lel-1
ordercg(k)=log(error(k)/error(k+1))/log(H(k)/H(k+1))
end
loglog(H,error,'-*')


Question-5)
clear all;
close all;
format short 
h=0.1;
x=0:h:1;
N=length(x);
y(1)=2;
f=@(x,y) y-y*x^2+2*x*y;
for i=1:N-1;
    y(i+1)=y(i)+h*f(x(i),y(i))
end
plot(x,y,'-*')




%RK 2 Method
clear all;
close all;
format short 
h=0.1;
x=0:h:1;
N=length(x);
y(1)=2;
f=@(x,y) y-y*x^2+2*x*y;
for i=1:N-1;
   k1=h*(f(x(i),y(i)));
   k2=h*(f((x(i)+(1/2)),(y(i)+(k1/2))));
   y(i+1)=(y(i))+h*(1/2)*(k1+k2) 
end
plot(x,y,'-*')