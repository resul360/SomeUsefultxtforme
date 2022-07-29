clear all:;clc;close all;
% tCylindarial tank filled

D=input('tank diameter = '); % unit m
h=input('tank height = '); % unit m
r=input('tank out radius = ');  % unit m


%input data

u=13; % kg-cal/m2-k-min
A=pi*r^2+2*pi*r*h;  % surface area
ro=1000;  %kg/m3  density of mix
Cp=1735; %  kg-cal/kg-k
m=3/4*(ro*pi*r^2*h);  % mass of mix
Ts=373; %k   % steam temperature
Dt=40; %itteration
Tm=300;   %small be than Ts %unit k

%Option A, feasibility of user data

if D>0 % higher than zero
    disp('D value is higher than zero');
else
    k=1; % for constant for while loop
    while k==1;  %
        disp('D value is lower than zero, and again input D')
        D=input('tank diameter = ');
        
        if D>0 % higher than zero
            disp('D value is higher than zero');
            k=2;  % constant
        end
    end
end


if h>0 % higher than zero
    disp('h value is higher than zero');
else
    k=1; % for constant for while loop
    while k==1;  %
        disp('h value is lower than zero, and again input h')
        h=input('tank diameter = ');
        
        if h>0 % higher than zero
            disp('h value is higher than zero');
            k=2;  % constant
        end
    end
end


if r>0 % higher than zero
    disp('r value is higher than zero');
else
    k=1; % for constant for while loop
    while k==1;  %
        disp('r value is lower than zero, and again input r')
        r=input('tank out radius = ');
        if r>0 % higher than zero
            disp('r value is higher than zero');
            k=2;  % constant
        end
    end
end


if Ts>Tm % higher
    disp('Tsteam higher than Tmix');
else
    k=1; % for constant for while loop
    while k==1;  %
        disp('Tsteam lower than Tmix and again Tmix')
        Tm=input('mix temperature = ');
        if Ts>Tm %
            disp('Tsteam higher than Tmix');
            k=2;  % constant
        end
    end
end

%Option B

DTi=Ts-Tm;  %initial Diffeerence temperature
kk=1; % constant for while loop
s=0;  % constant for time

while kk==1;
    DTi1=DTi-(Dt*((u*A)/(m*Cp)))*DTi;
    
    % for final time
    s=s+1;
    
    DTi=DTi1
    
    if abs(DTi)<=50;  % loop break for temperature difference is  value 
       break  % while loop is stopped
    end
    
    % Option D
    
    hold on
    plot((s/10),DTi,'r*')  % graph (DT,t)
    xlabel(' Time ')
    ylabel(' Difference temperature ')
   
    
end


% final time
Time=s/10;  % Time
disp('mix time , unit minute ')
Time


