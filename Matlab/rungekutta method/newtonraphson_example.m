clc;
clear;
close all;
func=@(x) exp(3)+(-x)-1;   % fonksiyon yazmalýsýn;


x0=2;        % Bitiþ aralýk deðeri
tol=1e-16;  %Tolerans deðeri
maxit=200;  % En fazla yapmasý gerek iterasyon sayýsý


% Formati  x=newtonraphson(func, x0, tol, maxit)
%  x= deðer 
%  bisection foksiyon adý 
% a ve b sýnýrlar 
% tol tolerans deðeri
% maxit iterasyon deðeri

x=newtonraphson(func, x0, tol, maxit);


disp(['x= ' num2str(x)]);
disp(['maxit= ' num2str(maxit)]);
disp(['f(x)= ' num2str(func(x))]);

