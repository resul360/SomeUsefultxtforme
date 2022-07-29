clc;
clear;
close all;
func=@(x) x^4-5*x^3+13;   % fonksiyon yazmalýsýn;


a=-1;       % Baþlangýç aralýk deðeri
b=6;        % Bitiþ aralýk deðeri
tol=1e-20;  %Tolerans deðeri
maxit=100;  % En fazla yapmasý gerek iterasyon sayýsý


% Formati  x=bisection(func, a, b, tol, maxit)
%  x= deðer 
%  bisection foksiyon adý 
% a ve b sýnýrlar 
% tol tolerans deðeri
% maxit iterasyon deðeri

x=bisection(func, a, b, tol, maxit);


disp(['x= ' num2str(x)]);
disp(['maxit= ' num2str(maxit)]);
disp(['f(x)= ' num2str(func(x))]);

