clear all;clc;

teta=0:20:360;

r=22; l=112;

n=l/r; d=93; % birimler mm

Teta=teta';

Deneyselx=[0;1;4;10;17;25;33;40;45;46;45;40;33;25;17;10;4;1;0];

Deneyselxdenk=(32.54*sin(0.007053*Teta+0.3013))+(13.73*sin (0.02182*Teta+(-2.357)));

Teorikx=r*(n+1-cosd(Teta)-sqrt(n.^2-sind(Teta).^2));

Teorikhiz=diff(Teorikx);

Deneyselhiz=diff(Deneyselxdenk);

Deneyselivme=diff(Deneyselhiz);

Teorikivme=diff(Teorikhiz);

hold on

plot(Teta,Teorikx,'-bO')

plot(Teta,Deneyselx,'-r*')

xlabel('teta');

ylabel('Yer deðiþtirme');

teta1=0:20:340;

teta11=teta1';

hold on

plot(teta11,Teorikhiz,'-bO')

plot(teta11,Deneyselhiz,'-r*')

xlabel('teta');

ylabel('Hýz');

%

teta2=0:20:320;

teta22=teta2';

hold on

plot(teta22,Teorikivme,'-bO')

plot(teta22,Deneyselivme,'-r*')

xlabel('teta');

ylabel('Ývme');

clear all; clc;

teta=0:30:360;

l=0.112; r=0.022;

n=l/r;

F=10; % newton

d=93/1000; % birim metre

Teta=teta';

kutle=[0;0.180;0.380;0.4;0.380;0.180;0;-0.180;-0.380;-0.4;-0.380;-0.180;0];

Deneyseltork=kutle*(9.81*d/2);

Teoriktork=F*r*((sind(Teta)+((sind(2*Teta)/(2*n)))));

hold on

plot(Teta,Teoriktork,'-r*');

plot(Teta,Deneyseltork,'-bO')

xlabel('Teta');

ylabel('Tork');