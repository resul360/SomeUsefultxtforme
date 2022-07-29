clc;
clear;
close all;
func=@(x) exp(3)+(-x)-1;   % fonksiyon yazmal�s�n;


x0=2;        % Biti� aral�k de�eri
tol=1e-16;  %Tolerans de�eri
maxit=200;  % En fazla yapmas� gerek iterasyon say�s�


% Formati  x=newtonraphson(func, x0, tol, maxit)
%  x= de�er 
%  bisection foksiyon ad� 
% a ve b s�n�rlar 
% tol tolerans de�eri
% maxit iterasyon de�eri

x=newtonraphson(func, x0, tol, maxit);


disp(['x= ' num2str(x)]);
disp(['maxit= ' num2str(maxit)]);
disp(['f(x)= ' num2str(func(x))]);

