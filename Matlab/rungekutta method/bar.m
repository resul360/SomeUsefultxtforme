clear all ; clc;
% 22/06/2020 tarihinde yap�ld�.
% verilenler
a=input('ba�lang�� de�eri giriniz (a) = ');
b=input('biti� de�eri giriniz (b) = ');
h=0.1;                    % ad�m aral���
V=0;     %Ba�lang�� hacmi
A=0;     %Ba�lang�� alan�
L=0;     %Ba�lang�� boyu
k=1;   %while d�ngi�s� i�in sabit
% b>a kontrol
while k==1;
    if b>a
        disp('b de�eri a dan b�u�kt�r, do�rudur')
        k=2;
    else
        disp('l�tfen b de�erinden k���k giriniz')
        a=input('ba�lang�� de�eri giriniz = ')
    end
end

k=1;
% uzunluk
while kl==1;
    if b>a;
        Ya=func(a);
        a=a+h;
        Yhy=func(a);
        
        % uzunluk
        Ly=Yhy-Ya;
        L=L+Ly;
        % Alan
        Ay=(Yhy+Ya)/2*h
        A=A+Ay
        
        
        % Hacim
        r=(Yhy+Ya)/2;
        Vy=2*pi*r*h;
        V=V+Vy;
        
        
    else
        k=2;
    end
end



L
A
V

