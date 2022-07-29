% x=[1 1 1; 1 2 4]
% 
% y=[2 3 5]
% 
% x'*inv(x*x')
% pinv(x)
% y*pinv(x)
% yy=[2 3 6]
% theta=yy*pinv(x)
% 
% yhat=theta*x
% 
% f=@(x) theta(1)+theta(1)*X

%%% Best Equaiton fit 
% 
% x=[1 2 4];   % Noktalar X bileþeni
% y=[2 3 6];   % Noktalar Y bileþeni
% 
% X=[ones(size(x));x];
% Y=y;
% 
% 
% theta=Y*pinv(X);
% f=@(x)  theta(1)+ theta(2)*x;
% 
% xx=linspace(0,5,100);
% yy=f(xx);
% 
% 
% figure
% plot(x,y,'or', 'markersize',10, 'Displayname', 'Data Points');
% hold on;
% plot(xx,yy,'b', 'lineWidth',2, 'Displayname', 'Fitted Equation');
% xlabel('x');
% ylabel('y');
% grid on;
% legend show




% Method 2
%%% Quandratic Equation

x=[1 2 4 3];   % Noktalar X bileþeni
y=[2 3 7 4];   % Noktalar Y bileþeni

X=[ones(size(x))
    x
    x.^2]; % quandratic Equation
Y=y;


theta=Y*pinv(X);
f=@(x)  theta(1)+ theta(2)*x+theta(3)*x.^2; % Quandratic Equation

xx=linspace(0,5,1000);
yy=f(xx);


figure
plot(x,y,'or', 'markersize',10, 'Displayname', 'Data Points');
hold on;
plot(xx,yy,'b', 'lineWidth',2, 'Displayname', 'Fitted Equation');
xlabel('x');
ylabel('y');
grid on;
legend show



% % Method 3
% %%% Expotional Equation
% 
% x=[1 2 4 3];   % Noktalar X bileþeni
% y=[2 3 7 4];   % Noktalar Y bileþeni
% 
% X=[ones(size(x))
%     x
%     exp(-x)]; % quandratic Equation
% Y=y;
% 
% 
% theta=Y*pinv(X);
% f=@(x)  theta(1)+ theta(2)*x+theta(3)*x.^2; % Quandratic Equation
% 
% xx=linspace(0,5,1000000);
% yy=f(xx);
% 
% 
% figure
% plot(x,y,'or', 'markersize',10, 'Displayname', 'Data Points');
% hold on;
% plot(xx,yy,'b', 'lineWidth',2, 'Displayname', 'Fitted Equation');
% xlabel('x');
% ylabel('y');
% grid on;
% legend show




