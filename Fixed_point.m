syms x
a=4;
b=5;
n=10;
shy(x)=(100-x^2)^(1/3);


shyd=diff(shy,x);
A=[0 0];
x1=shy(a);
x2=shy(b);
if 0<abs(shyd(a))&& abs(shyd(a))<1
     x=shy(a);
     A(1,1)=1;
     A(1,2)=x1;
     xn=shy(x1);
     A(2,2)=x1;
elseif 0<abs(shyd(b))&& abs(shyd(b))<1
    x=shy(b);
    A(1,1)=1;
    A(1,2)=x2;
    xn=shy(x2);
    A(2,2)=x2;
end
for i = 1:1:n
    A(i+1,1)=i+1;
    A(i+1,2)=xn;
    xn=shy(xn);
end
format LongE
disp(A)
        
        
    

