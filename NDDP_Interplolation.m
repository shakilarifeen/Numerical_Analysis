x=[10 15 20 22.5]; % x values
y=[227.04 362.78 517.35 602.97]; % y values
s=numel(x);

if s==5
    A=[0 0 0 0];
    B=[0 0 0];
    C=[0 0];
    format shorte
    b0=y(1,1)
   
    for i = 1:1:4
      A(1,i)=(y(1,i+1)-y(1,i))/(x(1,i+1)-x(1,i));
    end
    
    b1=A(1,1)
    
    for i = 1:1:3
        B(1,i)=(A(1,i+1)-A(1,i))/(x(1,i+2)-x(1,i));
    end
    
    b2=B(1,1)
    
    for i = 1:1:2
        C(1,i)=(B(1,i+1)-B(1,i))/(x(1,i+3)-x(1,i));
    end
    
    b3=C(1,1)
    
    b4=(C(1,2)-C(1,1))/(x(1,5)-x(1,1))

elseif s==4
    A=[0 0 0];
    B=[0 0];
    C=[0];
    format longe
    b0=y(1,1)
   
    for i = 1:1:3
      A(1,i)=(y(1,i+1)-y(1,i))/(x(1,i+1)-x(1,i));
    end
    
    b1=A(1,1)
    
    for i = 1:1:2
      B(1,i)=(A(1,i+1)-A(1,i))/(x(1,i+2)-x(1,i));
    end
    
    b2=B(1,1)
    
    b3=(B(1,2)-B(1,1))/(x(1,4)-x(1,1))
    
elseif s==3
    A=[0 0];
    B=[0];
    format longe
    b0=y(1,1)
   
    for i = 1:1:2
      A(1,i)=(y(1,i+1)-y(1,i))/(x(1,i+1)-x(1,i));
    end
    
    b1=A(1,1)
    
    b2=(A(1,2)-A(1,1))/(x(1,3)-x(1,1))
    
end




        
 