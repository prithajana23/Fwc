%1)a)Bisection method 
close all;
close all;

upper_bound="Let's choose an upper bound--(a1)--"
a1=input(upper_bound)
lower_bound="Let's choose an lower bound--(b1)--"
b1=input(lower_bound)
fun1=@(x) sin(x)+x^2-1;
c=(a1+b1)/2;
i=0;
data=[i a1 b1 c fun1(c)];
while (abs(fun1(c)) > 10^(-4))
if fun1(a1)*fun1(c)<0
    b1=c;
else
    a1=c;
end
i=i+1;
c=(a1+b1)/2;
data=[i a1 b1 c fun1(c)]

end

%b)Newton-Raphson Method
close all;
close all;

nearest_point="Let's choose a nearest point--(x0)--"
x0=input(nearest_point)
fun1 =@(x) sin(x)+x^2-1.0;
fun1(x0)
syms f(x)
f(x) = sin(x)+x^2;
Df = diff(f,x);
D=double(Df(x0))
i=0;
x=x0-(fun1(x0)/D)
abs(fun1(x))
while (abs(fun1(x))>10^(-8))
i=i+1;
x=x-(fun1(x)/D);
data=[i x fun1(x)]
end

%c)Secant Method 
close all;
close all;
a1="Let's choose a nearest point--(x0)--"
x0=input(a1)
a2="Let's choose a nearest point--(x1)--"
x1=input(a2)
fun1 =@(x) sin(x)+x^2-1.0;
i=0;
x=x1-(((x0-x1)/(fun1(x0)-fun1(x1)))*fun1(x1));
while (abs(fun1(x)) > 10^(-4))
if fun1(x0)*fun1(x1)<0
    x0=x;
else
    x1=x;
end
i=i+1;
x=x1-((x0-x1)/(fun1(x0)-fun1(x1)))*fun1(x1)
data=[i x0 x1 x fun1(x)]

end   

%d)Regula-falsi method
close all;
close all;
upper_bound="Let's choose an upper bound--(a1)--"
a1=input(upper_bound)
lower_bound="Let's choose an lower bound--(b1)--"
b1=input(lower_bound)
fun1=@(x) sin(x)+x^2-1;
x=a1-(fun1(a1)*((b1-a1)/(fun1(b1)-fun1(a1))))
i=0;
data=[i a1 b1 x fun1(x)];
while (abs(fun1(x)) > 10^(-4))
if fun1(a1)*fun1(x)<0
    b1=x;
else
    a1=x;
end
i=i+1;
x=a1-(fun1(a1)*((b1-a1)/(fun1(b1)-fun1(a1))))
data=[i a1 b1 x fun1(x)]

end


%e)Fixed-point Iteration Method
close all;
close all;
upper_bound="Let's choose any number--(x0)--"
x0=input(upper_bound)
fun1=@(x) sin(x)+x^2-1.0;
g=@(x) sqrt(1-sin(x));
i=0;
fun1(x0)
x1=g(x0);
data=[i x1 fun1(x1)]
while (abs(fun1(x0))>10^(-4))
x0=g(x0)
x1=g(x0)
i=i+1;
data=[i  x1   fun1(x1)]
end

%2)a)Newton-Raphson Method
close all;
close all;

nearest_point="Let's choose a nearest point--(x0)--"
x0=input(nearest_point)
fun1 =@(x) x^3-x-3;
fun1(x0)
syms f(x)
f(x) = sin(x)+x^2;
Df = diff(f,x);
D=double(Df(x0))
i=0;
x=x0-(fun1(x0)/D)
abs(fun1(x))
while (abs(fun1(x))>10^(-8))
i=i+1;
x=x-(fun1(x)/D);
data=[i x fun1(x)]
end


%b)Newton-Raphson Method
close all;
close all;

nearest_point="Let's choose a nearest point--(x0)--"
x0=input(nearest_point)
fun1 =@(x) x^3-x-3;
fun1(x0)
syms f(x)
f(x) = sin(x)+x^2;
Df = diff(f,x);
D=double(Df(x0))
i=0;
x=x0-(fun1(x0)/D)
abs(fun1(x))
while (abs(fun1(x))>10^(-8))
i=i+1;
x=x-(fun1(x)/D);
data=[i x fun1(x)]
end  


%3)a)Secant Method 
close all;
close all;
a1="Let's choose a nearest point--(x0)--"
x0=input(a1)
a2="Let's choose a nearest point--(x1)--"
x1=input(a2)
fun1 =@(x) x^2-6*x+5;
i=0;
x=x1-(((x0-x1)/(fun1(x0)-fun1(x1)))*fun1(x1));
while (abs(fun1(x)) > 10^(-4))
if fun1(x0)*fun1(x1)<0
    x0=x;
else
    x1=x;
end
i=i+1;
x=x1-((x0-x1)/(fun1(x0)-fun1(x1)))*fun1(x1)
data=[i x0 x1 x fun1(x)]

end  

%b)Regula-falsi method
close all;
close all;
upper_bound="Let's choose an upper bound--(a1)--"
a1=input(upper_bound)
lower_bound="Let's choose an lower bound--(b1)--"
b1=input(lower_bound)
fun1 =@(x) x^2-6*x+5;
x=a1-(fun1(a1)*((b1-a1)/(fun1(b1)-fun1(a1))))
i=0;
data=[i a1 b1 x fun1(x)];
while (abs(fun1(x)) > 10^(-4))
if fun1(a1)*fun1(x)<0
    b1=x;
else
    a1=x;
end
i=i+1;
x=a1-(fun1(a1)*((b1-a1)/(fun1(b1)-fun1(a1))))
data=[i a1 b1 x fun1(x)]

end

%a) Using g1(x) = sin−1 (1 − x2) Fixed-point Iteration Method
close all;
close all;
upper_bound="Let's choose any number--(x0)--"
x0=input(upper_bound)
fun1=@(x) sin(x)+x^2-1.0;
g=@(x) asin(1-x^2)
i=0;
fun1(x0)
x1=g(x0);
data=[i x1 fun1(x1)]
while (abs(fun1(x0))>10^(-4))
x0=g(x0)
x1=x0
i=i+1;
data=[i  x1   fun1(x1)]
end  

%b) g2(x) = −√1 − sin(x) Fixed-point Iteration Method
close all;
close all;
upper_bound="Let's choose any number--(x0)--"
x0=input(upper_bound)
fun1=@(x) sin(x)+x^2-1.0;
g=@(x) -sqrt(1-sin(x))
i=0;
fun1(x0)
x1=g(x0);
data=[i x1 fun1(x1)]
while (abs(fun1(x0))>10^(-4))
x0=g(x0)
x1=x0
i=i+1;
data=[i  x1   fun1(x1)]
end


%c) g3(x) = √1 − sin(x) Fixed-point Iteration Method
close all;
close all;
upper_bound="Let's choose any number--(x0)--"
x0=input(upper_bound)
fun1=@(x) sin(x)+x^2-1.0;
g=@(x) sqrt(1-sin(x))
i=0;
fun1(x0)
x1=g(x0);
data=[i x1 fun1(x1)]
while (abs(fun1(x0))>10^(-4))
x0=g(x0)
x1=x0
i=i+1;
data=[i  x1   fun1(x1)]
end  
%1)a)Bisection method 
close all;
close all;

upper_bound="Let's choose an upper bound--(a1)--"
a1=input(upper_bound)
lower_bound="Let's choose an lower bound--(b1)--"
b1=input(lower_bound)
fun1=@(x) sin(x)+x^2-1;
c=(a1+b1)/2;
i=0;
data=[i a1 b1 c fun1(c)];
while (abs(fun1(c)) > 10^(-4))
if fun1(a1)*fun1(c)<0
    b1=c;
else
    a1=c;
end
i=i+1;
c=(a1+b1)/2;
data=[i a1 b1 c fun1(c)]

end

%b)Newton-Raphson Method
close all;
close all;

nearest_point="Let's choose a nearest point--(x0)--"
x0=input(nearest_point)
fun1 =@(x) sin(x)+x^2-1.0;
fun1(x0)
syms f(x)
f(x) = sin(x)+x^2;
Df = diff(f,x);
D=double(Df(x0))
i=0;
x=x0-(fun1(x0)/D)
abs(fun1(x))
while (abs(fun1(x))>10^(-8))
i=i+1;
x=x-(fun1(x)/D);
data=[i x fun1(x)]
end

%c)Secant Method 
close all;
close all;
a1="Let's choose a nearest point--(x0)--"
x0=input(a1)
a2="Let's choose a nearest point--(x1)--"
x1=input(a2)
fun1 =@(x) sin(x)+x^2-1.0;
i=0;
x=x1-(((x0-x1)/(fun1(x0)-fun1(x1)))*fun1(x1));
while (abs(fun1(x)) > 10^(-4))
if fun1(x0)*fun1(x1)<0
    x0=x;
else
    x1=x;
end
i=i+1;
x=x1-((x0-x1)/(fun1(x0)-fun1(x1)))*fun1(x1)
data=[i x0 x1 x fun1(x)]

end   

%d)Regula-falsi method
close all;
close all;
upper_bound="Let's choose an upper bound--(a1)--"
a1=input(upper_bound)
lower_bound="Let's choose an lower bound--(b1)--"
b1=input(lower_bound)
fun1=@(x) sin(x)+x^2-1;
x=a1-(fun1(a1)*((b1-a1)/(fun1(b1)-fun1(a1))))
i=0;
data=[i a1 b1 x fun1(x)];
while (abs(fun1(x)) > 10^(-4))
if fun1(a1)*fun1(x)<0
    b1=x;
else
    a1=x;
end
i=i+1;
x=a1-(fun1(a1)*((b1-a1)/(fun1(b1)-fun1(a1))))
data=[i a1 b1 x fun1(x)]

end


%e)Fixed-point Iteration Method
close all;
close all;
upper_bound="Let's choose any number--(x0)--"
x0=input(upper_bound)
fun1=@(x) sin(x)+x^2-1.0;
g=@(x) sqrt(1-sin(x));
i=0;
fun1(x0)
x1=g(x0);
data=[i x1 fun1(x1)]
while (abs(fun1(x0))>10^(-4))
x0=g(x0)
x1=g(x0)
i=i+1;
data=[i  x1   fun1(x1)]
end

%2)a)Newton-Raphson Method
close all;
close all;

nearest_point="Let's choose a nearest point--(x0)--"
x0=input(nearest_point)
fun1 =@(x) x^3-x-3;
fun1(x0)
syms f(x)
f(x) = sin(x)+x^2;
Df = diff(f,x);
D=double(Df(x0))
i=0;
x=x0-(fun1(x0)/D)
abs(fun1(x))
while (abs(fun1(x))>10^(-8))
i=i+1;
x=x-(fun1(x)/D);
data=[i x fun1(x)]
end


%b)Newton-Raphson Method
close all;
close all;

nearest_point="Let's choose a nearest point--(x0)--"
x0=input(nearest_point)
fun1 =@(x) x^3-x-3;
fun1(x0)
syms f(x)
f(x) = sin(x)+x^2;
Df = diff(f,x);
D=double(Df(x0))
i=0;
x=x0-(fun1(x0)/D)
abs(fun1(x))
while (abs(fun1(x))>10^(-8))
i=i+1;
x=x-(fun1(x)/D);
data=[i x fun1(x)]
end  


%3)a)Secant Method 
close all;
close all;
a1="Let's choose a nearest point--(x0)--"
x0=input(a1)
a2="Let's choose a nearest point--(x1)--"
x1=input(a2)
fun1 =@(x) x^2-6*x+5;
i=0;
x=x1-(((x0-x1)/(fun1(x0)-fun1(x1)))*fun1(x1));
while (abs(fun1(x)) > 10^(-4))
if fun1(x0)*fun1(x1)<0
    x0=x;
else
    x1=x;
end
i=i+1;
x=x1-((x0-x1)/(fun1(x0)-fun1(x1)))*fun1(x1)
data=[i x0 x1 x fun1(x)]

end  

%b)Regula-falsi method
close all;
close all;
upper_bound="Let's choose an upper bound--(a1)--"
a1=input(upper_bound)
lower_bound="Let's choose an lower bound--(b1)--"
b1=input(lower_bound)
fun1 =@(x) x^2-6*x+5;
x=a1-(fun1(a1)*((b1-a1)/(fun1(b1)-fun1(a1))))
i=0;
data=[i a1 b1 x fun1(x)];
while (abs(fun1(x)) > 10^(-4))
if fun1(a1)*fun1(x)<0
    b1=x;
else
    a1=x;
end
i=i+1;
x=a1-(fun1(a1)*((b1-a1)/(fun1(b1)-fun1(a1))))
data=[i a1 b1 x fun1(x)]

end

%4)a) Using g1(x) = sin−1 (1 − x2) Fixed-point Iteration Method
close all;
close all;
upper_bound="Let's choose any number--(x0)--"
x0=input(upper_bound)
fun1=@(x) sin(x)+x^2-1.0;
g=@(x) asin(1-x^2)
i=0;
fun1(x0)
x1=g(x0);
data=[i x1 fun1(x1)]
while (abs(fun1(x0))>10^(-4))
x0=g(x0)
x1=x0
i=i+1;
data=[i  x1   fun1(x1)]
end  

%b) g2(x) = −√1 − sin(x) Fixed-point Iteration Method
close all;
close all;
upper_bound="Let's choose any number--(x0)--"
x0=input(upper_bound)
fun1=@(x) sin(x)+x^2-1.0;
g=@(x) -sqrt(1-sin(x))
i=0;
fun1(x0)
x1=g(x0);
data=[i x1 fun1(x1)]
while (abs(fun1(x0))>10^(-4))
x0=g(x0)
x1=x0
i=i+1;
data=[i  x1   fun1(x1)]
end


%c) g3(x) = √1 − sin(x) Fixed-point Iteration Method
close all;
close all;
upper_bound="Let's choose any number--(x0)--"
x0=input(upper_bound)
fun1=@(x) sin(x)+x^2-1.0;
g=@(x) sqrt(1-sin(x))
i=0;
fun1(x0)
x1=g(x0);
data=[i x1 fun1(x1)]
while (abs(fun1(x0))>10^(-4))
x0=g(x0)
x1=x0
i=i+1;
data=[i  x1   fun1(x1)]
end  
