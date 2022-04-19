clear all, clc
p = [1  -1.1  2.3  0.5  3.3];
m = length(p);
s0 = -1,;
r0 = -1;
fprintf('Nghiem cua da thuc:\n');
while m > 3
    [r, s] = PPBairstow(p,r0,s0,50);
    m = m - 2;
    x1 = (r + sqrt(r^2+4*s))/2;
    x2 = (r - sqrt(r^2+4*s))/2;
    fprintf('%s\n',num2str(x1));
    fprintf('%s\n',num2str(x2));
    p = deconv(p,[1 -r -s]);
end
if length(p) == 3
    x1 = (-p(2) + sqrt(p(2)^2-4*p(3)))/2;
    x2 = (-p(2) - sqrt(p(2)^2-4*p(3)))/2;
    fprintf('%s\n',num2str(x1));;
    fprintf('%s\n',num2str(x2));;  
else
    x1 = -p(2)/p(1);
    fprintf('%f\n',x1);;
end