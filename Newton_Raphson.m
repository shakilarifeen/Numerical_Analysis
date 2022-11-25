syms x
f(x)=x^3-(2*x)-5;
fd=diff(f,x);
xo=2;
n=10;

A=[0 0];
for i = 1:1:n
x1=xo-f(xo)/fd(xo);
A(i,1)=i;
A(i,2)=x1;
xo=x1;
end
format longE
disp(A)
    

