A = [0 1 3 4; -12 0 12 24];

format short
syms x
f(x) = 0*x;
N = 1;
D = 1;
s = size(A);
n = s(1,2);
B = sym(zeros(n,2));

for i=1:1:n
    for j=1:1:n
        if i==j
            continue
        else
            N = N*( x - A(1,j) );
            D = D*( A(1,i) - A(1,j) );
        end
    end
    
    L = N/D;
    B(i,1) = i-1;
    B(i,2) = L;
    
    f(x) = (f(x)) + (L*A(2,i));
    N = 1;
    D = 1;
end

disp(B)
disp(f(x))
disp(expand(f(x)))
    