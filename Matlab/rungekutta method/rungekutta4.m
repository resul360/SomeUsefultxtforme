function [x, t]=rungekutta4(f, x0, t0, df, tf)
t=t0:df:tf;
nt=numel(x);


nx=numel(x0);
x=nan(nx, nt);

x(:,1)=x0

for k=1:nt-1
    
    k1=dt*f(t(k), x(:,k));
    k2=dt*f(t(k)+dt/2,  x(:,k)+k1/2);
    k3=dt*f(t(k)+dt/2,  x(:,k)+k2/2);
    k4=dt*f(t(k)+dt,  x(:,k)+k3);
    
    dx=(k1+2*k2+3*k3+k4)/6;
    
    x(:,k+1)=x(:,k)+dx
    

end
%% lotka volterar model ile çalýþýyr


