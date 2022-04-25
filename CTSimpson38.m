clc
clear
f=input('\n Enter the function f(x): '); %inline('1/(1+x)')
% f=@ (x) 1/(1+x) or cos(x)-log(x)+exp(x) etc
a=input('Enter lower limit a: '); % exmple a=1
b=input('Enter upper limit b: ');  % exmple b=2
n=input('Enter the  number of sub-intervals n: '); 
 % exmple n=21
h=(b-a)/n;
if rem(n,3)~=0
   fprintf('\n Enter valid n!!!'); 
   n=input('\n Enter n as multiple of 3: ');
end
so=0;
sm3=0;
 % Formula:  (3h/8)*[(y0+yn)+2*(y3+y6+..+yn-3)
 %+3*(y1+y2+y4+y5+...+yn-2+yn-1)]
for k=1:1:n-1
    x(k)=a+k*h;
    y(k)=f(x(k));
    if rem(k,3)==0
       sm3=sm3+y(k); %sum of multiple of 3 terms 
     else
     so=so+y(k);%sum of others terms 
    end
end
answer=(3*h/8)*(f(a)+f(b)+3*so+2*sm3);
fprintf('\n The value of integration is %f',answer);