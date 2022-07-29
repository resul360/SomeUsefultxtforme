% RK4 ÇÖZÜM (RUNGE KUTTA)

clc;clear all;close all;

z0=0; y0=2; t=0; % baþlangýç deðerleri

% t=0 dan t=4 e kadar aralýkta fonksiyonun deðerleri bakýlaack

h=0.01; % bu aralýktaki artýþ miktarý

% Bu deðeri inputla da kontrol edebiliriz.

i=1;

k=0:h:4;

m=length(k);

for i=1:m;

Fz(i)=t-y0;

Fy(i)=z0;

k11=Fz(i); % K'nýn 1. inidisi eðimi 2.si denklem numarasýdýr.

k12=Fy(i);

Fz(i)=(t+h/2)-(y0+k11*h/2);

Fy(i)=z0+(k12*h/2);

k21=Fz(i);

k22=Fy(i);

Fz(i)=(t+h/2)-(y0+k21*h/2);

Fy(i)=z0+(k22*h/2);

k31=Fz(i);

k32=Fy(i);

Fz(i)=(t+h/2)-(y0+k31*h/2);

Fy(i)=z0+(k32*h/2);

k41=Fz(i);

k42=Fy(i);

z=z0+(h*(k11+2*k21+2*k31+k41)/6);

y=y0+(h*(k12+2*k22+2*k32+k42)/6);

Y(i)=y;

z0=z; y0=y;

end

hold on

plot(k,Y,'b-');

%HEUNS ÇÖZÜMÜ

% clc;clear all;
% 
% z0=0; y0=2; t=0; % baþlangýç deðerleri
% 
% % t=0 dan t=4 e kadar aralýkta fonksiyonun deðerleri bakýlaack
% 
% h=0.1; % bu aralýktaki artýþ miktarý % Bu deðeri inputla da kontrol edebiliriz.
% 
% i=1;
% 
% k=0:h:4; % fonksiyonun aralýk deðerleri gösteren vektör
% 
% m=length(k); % Vektörün eleman sayýsý döngü sýnýr için lazým
% 
% for i=1:m;
% 
% Fz(i)=t-y0; % Dz\dt ifadesidir.
% 
% Fy(i)=z0; % Dy\dt ifadesidir.
% 
% z=z0+Fz(i)*h;
% 
% y=y0+Fy(i)*h;
% 
% Fz_1(i)=(k(i)+h)-y;
% 
% Fy_1(i)=z;
% 
% Ortz=(Fz_1(i)+Fz(i))/2;
% 
% Orty=(Fy_1(i)+Fy(i))/2;
% 
% zz=z0+(Ortz*h);
% 
% yz=y0+(Orty*h);
% 
% Y(i)=yz;
% 
% z0=zz; y0=yz;
% 
% end
% 
% plot(k,Y,'k-o')
% 
% ylabel('Fonksiyon deðerleri');
% 
% % EULER ÇÖZÜMÜ
% 
% clc;clear all;
% 
% z0=0; y0=2; t=0; % baþlangýç deðerleri
% 
% % t=0 dan t=4 e kadar aralýkta fonksiyonun deðerleri bakýlaack
% 
% h=0.1; % bu aralýktaki artýþ miktarý
% 
% % Bu deðeri inputla da kontrol edebiliriz.
% 
% i=1;
% 
% k=0:h:4;
% 
% m=length(k);
% 
% for i=1:m;
% 
% Fz(i)=t-y0; % Dz\dt ifadesidir.
% 
% Fy(i)=z0; % Dy\dt ifadesidir.
% 
% z=z0+Fz(i)*h;
% 
% y=y0+Fy(i)*h;
% 
% Y(i)=y;
% 
% z0=z; y0=y;
% 
% end
% 
% plot(k,Y,'k-*')
% 
% title('Sayýsal çözümler');
% 
% ylabel('Fonksiyon deðerleri');

% GERÇEK ÇÖZÜM (ANALÝTÝK)

clc;clear all;

z0=0; y0=2; t=0; % baþlangýç deðerleri

% t=0 dan t=4 e kadar aralýkta fonksiyonun deðerleri bakýlaack

h=0.1; % bu aralýktaki artýþ miktarý

% Bu deðeri inputla da kontrol edebiliriz.

i=1;

k=0:h:4; % fonksiyonun aralýk deðerleri gösteren vektör

m=length(k); % Vektörün eleman sayýsý döngü sýnýr için lazým

for i=1:m;

Y(i)=((k(i)^3+12)/(3*k(i)^2+6));

end

Y

plot(k,Y,'y-*');