clc;
clear;
close all;
func=@(x) x^4-5*x^3+13;   % fonksiyon yazmal�s�n;


a=-1;       % Ba�lang�� aral�k de�eri
b=6;        % Biti� aral�k de�eri
tol=1e-20;  %Tolerans de�eri
maxit=100;  % En fazla yapmas� gerek iterasyon say�s�


% Formati  x=bisection(func, a, b, tol, maxit)
%  x= de�er 
%  bisection foksiyon ad� 
% a ve b s�n�rlar 
% tol tolerans de�eri
% maxit iterasyon de�eri

x=bisection(func, a, b, tol, maxit);


disp(['x= ' num2str(x)]);
disp(['maxit= ' num2str(maxit)]);
disp(['f(x)= ' num2str(func(x))]);

