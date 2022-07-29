dydx = zeros(16,1);
   switch res_bc
      case 1                                % x in [-L1 0]
         dydx(1)=    k_11*y(5)+k_21*y(6)+k_31*y(7);
         dydx(2)=   -y(3);
         dydx(3)=   -k_41*y(5)-k_51*y(6)-k_61*y(7);
         dydx(4)=   k_71*y(5)+k_81*y(6)+k_91*y(7);
         dydx(5)=   0;
         dydx(6)=   0;
         dydx(7)=   y(8);
         dydx(8)=   0;
      case 2                                % x in [0 L]
        dydx(1)=    k_11*y(5)+k_21*y(6)+k_31*y(7);  
        dydx(2)=    -y(3);
        dydx(3)=    -k_41*y(5)-k_51*y(6)-k_61*y(7); 
        dydx(4)=    k_71*y(5)+k_81*y(6)+k_91*y(7);
        dydx(5)=    (G_a/t_a)*(y(1)+t_1/2*y(3)-y(9)+t_2/2*y(11));
        dydx(6)=    G_a/t_a*(y(4)-y(12));
        dydx(7)=    y(8)+G_a*(t_1+t_a)/(2*t_a)*(y(1)+ t_1/2*y(3)-y(9)+t_2/2*y(11));
        dydx(8)=    E_a/t_a*(y(2)-y(10));
        dydx(9)=    k_12*y(13)+k_22*y(14)+k_32*y(15);
        dydx(10)=   -y(11);
        dydx(11)=   -k_42*y(13)-k_52*y(14)-k_62*y(15);
        dydx(12)=    k_72*y(13)+k_82*y(14)+k_92*y(15);
        dydx(13)=    G_a/t_a*(-y(1)-t_1/2*y(3)+y(9)-t_2/2*y(11));
        dydx(14)=    G_a/t_a*(-y(4)+y(12));
        dydx(15)=    y(16)+G_a*(t_2+t_a)/(2*t_a)*(y(1)+t_1/2*y(3)-y(9)+t_2/2*y(11));
        dydx(16)=    E_a/t_a*(y(10)-y(2));
      case 3                %x in [L L+L1]   
         dydx(9)=    k_12*y(13)+k_22*y(14)+k_32*y(15);
         dydx(10)=   -y(11);
         dydx(11)=   -k_42*y(13)-k_52*y(14)-k_62*y(15);
         dydx(12)=   k_72*y(13)+k_82*y(14)+k_92*y(15);
         dydx(13)=   0;
         dydx(14)=   0;
         dydx(15)=   y(16);
         dydx(16)=   0; 
   end
   function region
   res_bc=  [      YL(5,1)-Nxx       %Force x
                YL(6,1)           %Force Y=0
                YL(7,1)       %moment of force=0
                YL(8,1)-Qxx       %Force z
                YR(1,1) - YL(1,2) % Continuity bei X=0
                YR(2,1) - YL(2,2) % Continuity bei X=0
                YR(3,1) - YL(3,2) % Continuity bei X=0
                YR(4,1) - YL(4,2) % Continuity bei X=0
                YR(5,1) - YL(5,2) % Continuity bei X=0
                YR(6,1) - YL(6,2) % Continuity bei X=0
                YR(7,1) - YL(7,2) % Continuity bei X=0
                YR(8,1) - YL(8,2) % Continuity bei X=0  
                YL(13,2)        %free edge plate 2
                YL(14,2)        %free edge plate 2
                YL(15,2)        %free edge plate 2
                YL(16,2)        %free edge plate 2
                YR(5,2)         %free edge plate 1
                YR(6,2)         %free edge plate 1
                YR(7,2)         %free edge plate 1
                YR(8,2)         %free edge plate 1
                YR(9,2) -  YL(9,3)  % Continuity X=L
                YR(10,2) - YL(10,3) % Continuity X=L
                YR(11,2) - YL(11,3) % Continuity X=L
                YR(12,2) - YL(12,3) % Continuity X=L
                YR(13,2) - YL(13,3) % Continuity X=L
                YR(14,2) - YL(14,3) % Continuity X=L
                YR(15,2) - YL(15,3) % Continuity X=L
                YR(16,2) - YL(16,3) % Continuity X=L
                YR(13,3)-Nxx   
                YR(14,3)       
                YR(15,3)-Mxx       
                YR(16,3)-Qxx ];    
   end
          