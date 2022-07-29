theta=0:60:330;
P=sind(theta)+1i*cosd(theta);
P=reshape(P,1,[]);
N=length(P);
d=0.01;

for k=1:1000;
    V=P(end,[(2:N) 1])-P(end,:);
    P(end+1,:)=P(end,:)+d*V;
end
hold on
for k=1:N
    plot(real(P(:,k)),imag(P(:,k)));
end

axis equal



%opposite

theta=0:60:330;
P=cosd(theta)+1i*sind(theta);
P=reshape(P,1,[]);
N=length(P);
d=0.01;

for k=1:1000;
    V=P(end,[(2:N) 1])-P(end,:);
    P(end+1,:)=P(end,:)+d*V;
end
hold on
for k=1:N
    plot(real(P(:,k)),imag(P(:,k)));
end
axis equal
