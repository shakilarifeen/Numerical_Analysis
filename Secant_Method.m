syms x
f(x)=x^3-(2*x)-5;
x0=2;
x1=3;
n=10;

A=[0 0];
for i = 1:1:n
    xn=((x0*f(x1))-(x1*f(x0)))/(f(x1)-f(x0));
    A(i,:)=[i,xn];
    x0=x1;
    x1=xn;
end
%output format=[iteration approximation]
format longE
disp(A)
    
    
    