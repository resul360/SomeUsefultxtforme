clear all ; clc;
% 22/06/2020 tarihinde yapýldý.
% verilenler
a=input('baþlangýç deðeri giriniz (a) = ');
b=input('bitiþ deðeri giriniz (b) = ');
h=0.1;                    % adým aralýðý
V=0;     %Baþlangýç hacmi
A=0;     %Baþlangýç alaný
L=0;     %Baþlangýç boyu
k=1;   %while döngiüsü için sabit
% b>a kontrol
while k==1;
    if b>a
        disp('b deðeri a dan büuüktür, doðrudur')
        k=2;
    else
        disp('lütfen b deðerinden küçük giriniz')
        a=input('baþlangýç deðeri giriniz = ')
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

