function x=newtonraphson(f, x0, tol, maxit)

x=x0;
fx=f(x);

dx=1e-5;

for it=1:maxit
    
    if abs(fx)<tol
       break;
    end
   
    fpx=derivative(f, x,dx);
    if abs(fpx)<tol
       break;
    end
    
   x=x-fx/fpx;
   fx=f(x);
   
         
end

end
function dfdx=derivative(f, x, dx)

df=f(x+dx)-f(x-dx);
dfdx=df/(2*dx);
end