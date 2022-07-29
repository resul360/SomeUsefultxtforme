clc;
clear;
close all;
func=@(x) x^2-exp(-x)-1;   % fonksiyon yazmalýsýn;


a=1;       % Baþlangýç aralýk deðeri
b=6;        % Bitiþ aralýk deðeri
tol=1e-20;  %Tolerans deðeri
maxit=20;  % En fazla yapmasý gerek iterasyon sayýsý


% Formati  x=secant(func, a, b, tol, maxit)
%  x= deðer 
%  bisection foksiyon adý 
% a ve b sýnýrlar 
% tol tolerans deðeri
% maxit iterasyon deðeri

x=secant(func, a, b, tol, maxit);


disp(['x= ' num2str(x)]);
disp(['maxit= ' num2str(maxit)]);
disp(['f(x)= ' num2str(func(x))]);

