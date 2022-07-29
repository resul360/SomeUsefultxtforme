function  x=bisection(f, a, b, tol, maxit)

fa=f(a);
if abs(fa)<tol
   x=a;
   return;
end

fb=f(b);
if abs(fb)<tol
   x=b;
   return;
end

if fa*fb>0
    disp('f(a) and f(b) must have different signs');
    x=[];
    return;
end


for it=i:maxit
    
    c=(a+b)/2;
    fc=f(c);
    
    if abs(b-a)<tol
        break;
    end
    if abs(c)<tol
        break;
    end
    
    if fa*fc>0  % fa ile fc deðiþme 
        a=c;
        fa=fc;
    end
    
    if fb*fc>0    % fb ile fc deðiþme 
        b=c;
        fb=fc;
    end
end

x=c;
end
