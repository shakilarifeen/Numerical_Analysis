%output format : A = [ itteration  a  b  p  |pValDif| f(a)  f(p) ]; 
a=2;
b=3;
n=15;
syms x
f(x)= (x^3) - (2*x) - 5;


format shortE
A=[0 0 0 0 0 0 0];
for i = 1:1:n
    p1=(a+b)/2;
    q = abs(p1-A(i,4));
    x = f(a);
    y = f(p1);
    A(i+1,:) = [i,a,b,p1,q,x,y];
    if sign(x)==sign(y)
        a = p1;
        b = b;
    else
        a = a;
        b = p1;
    end
end
disp(A)


    
