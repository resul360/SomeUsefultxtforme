clear all;clc;close all;
%% Asansör mesnet tepkileri
% Dýþ kuvvetler +Saatin tersi pozitif+
% A  noktasýna göre moment dengesinden
% Top_A=F_G*(0,52)+F_2*(1)=0   olmalýdýr.  
F_G=601.1 % Newton
F_2=(F_G*0.52)/(1); % Newton
F_2

% Y yönüne göre denge yazýlýrsa;
% yukarý yön pozitif
% -F_G+F_1+F_2=0 olamlýdýr.
F_1=(-F_G+F_2)*-1;  % Newton
F_1

%% Ýç kuvvet hesabý
% Y yönüne göre denge yazýlýrsa
% yukarý yön pozitif
%  F_1-V_1=0 olmalýdýr.
V_1=F_1; % Newton 

% 1 noktasýna göre moment dengesinden
% +Saatin tersi pozitif+
% F_2*0+M_1= 0 olmalýdýr.

M_1=0;  % Newton x metre
M_1

% Y yönüne göre denge yazýlýrsa
% yukarý yön pozitif
%  F_1-F_G-V_2=0 olmalýdýr.
V_2=F_1-F_G; % Newton 
V_2;

% 2 noktasýna göre moment dengesinden
% +Saatin tersi pozitif+
% -F_1*0,52+M_2= 0 olmalýdýr.

M_2=F_1*0.52; % Newton x metre
M_2  

% Y yönüne göre denge yazýlýrsa
% yukarý yön pozitif
%  F_1-F_G+F_2-V_3=0 olmalýdýr.
V_3=F_1-F_G+F_2; % Newton 
V_3

% 3 noktasýna göre moment dengesinden
% +Saatin tersi pozitif+
% -F_1*1+F_G*0,48+M_3= 0 olmalýdýr.

M_3=(-F_1*1+F_G*0.48)*(-1); % Newton x metre
M_3


% Asansör kolu  
%malzeme 304 paslanmaz çelik 
ro= 8000  % kg/m2  yoðunluðu
hacim=0.06*0.04*1.2; % 40 mm x 60 mm kesitli bir profil
yer_cekimi=9.81
W=ro*hacim*yer_cekimi; % profil aðýrlýk kuvveti
W

% B noktasýna göre moment dengesinden
% +Saatin tersi pozitif+
% -F_1*1.2*cos(theta)+F_Ay*0.6*cos(theta)+F_Ax*0.6*cos(theta)+W_1*0.6*cos(theta)= 0 olmalýdýr.
theta=0:5:360;
m=length(theta);
for i=1:1:m;
F_Ax(i)=(1.2.*cosd(i)*(F_1+F_2)-(W*0.6.*cosd(i)))/(0.6.*sind(i));
end

plot(theta,F_Ax)