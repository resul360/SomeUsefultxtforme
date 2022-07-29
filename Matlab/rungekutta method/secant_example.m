clc;
clear;
close all;
func=@(x) x^2-exp(-x)-1;   % fonksiyon yazmal�s�n;


a=1;       % Ba�lang�� aral�k de�eri
b=6;        % Biti� aral�k de�eri
tol=1e-20;  %Tolerans de�eri
maxit=20;  % En fazla yapmas� gerek iterasyon say�s�


% Formati  x=secant(func, a, b, tol, maxit)
%  x= de�er 
%  bisection foksiyon ad� 
% a ve b s�n�rlar 
% tol tolerans de�eri
% maxit iterasyon de�eri

x=secant(func, a, b, tol, maxit);


disp(['x= ' num2str(x)]);
disp(['maxit= ' num2str(maxit)]);
disp(['f(x)= ' num2str(func(x))]);

