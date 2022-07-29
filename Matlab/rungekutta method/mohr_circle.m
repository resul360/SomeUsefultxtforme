%% Draw Mohr's circle in 2D
%--------------------------------------------------------------------------
% Mohr's circle in 2D
% This routine draws Mohr's circle with center defined as Center, radius as
% a scalar R. I used this particular example for an advanced mechanics of
% materials class.   
%
% Mark Tschopp
% January, 2010
%
% New Version
% Ricardo Gutiérrez
% August, 2019
%
%--------------------------------------------------------------------------
% % For 2D stress tensor
% % Input dialog box for stresses in xy coordinate system
prompt={'\sigma_x','\sigma_y','\tau_{xy}'};
name='Input for Peaks function';
numlines=1;
defaultanswer={'80','40','-30'};
options.Resize='on';
options.WindowStyle='normal';
options.Interpreter='tex';
answer=inputdlg(prompt,name,numlines,defaultanswer,options);
% Stress tensor, Center, and Radius of Circle
S = [str2double(answer(1)) str2double(answer(3)); str2double(answer(3)) str2double(answer(2))];
Center = (S(1,1)+S(2,2))/2;
R = sqrt(((S(1,1)-S(2,2))/2)^2+S(1,2)^2);
% Calculates the ngle of the main directions
theta = atan2(-S(2,1),(S(1,1)-Center))*180/pi;
tt = abs(theta);
ang = num2str(tt,3);
coor_x = 0.45*R*cos(theta*pi/540); 
coor_y = 0.45*R*sin(theta*pi/540);
arrow_angle = theta/2;
% Plot Mohr's circle
% I downloaded a function "circle.m" from the MATLAB Central Website!!!
% It works great with this problem!
c_handle = circle([Center,0],R,100,'-k');
hold on
plot([S(1,1), S(2,2)],[-S(1,2), S(1,2)],'k-','LineWidth',2)
plot(Center,0,'ko','MarkerFaceColor','k')   % Center
plot(S(1,1),-S(1,2),'ko','MarkerFaceColor','k') %A
plot(S(2,2),S(1,2),'ko','MarkerFaceColor','k') %B
plot(Center,R,'ko','MarkerFaceColor','k')   % Tau_max
plot(Center,-R,'ko','MarkerFaceColor','k')  % Tau_max (negative)
plot(Center+R, 0, 'ko','MarkerFaceColor','k')   % sigma_1
plot(Center-R, 0, 'ko','MarkerFaceColor','k')	% sigma_2
% I downloaded a function "circular_arrow.m" from the MATLAB Central Website!!!
circular_arrow(c_handle, R/4,[Center,0] , arrow_angle, theta, 1, 'k', 10);
circular_arrow(c_handle, R/8,[Center-0.95*R,1*R] , 90, 135, 1, 'r', 10);
circular_arrow(c_handle, R/8,[Center-0.95*R,-1*R] , 270, 135, -1, 'r', 10);
% Plot options
axis equal
set(c_handle,'Color','k','LineWidth',2)
ylim([-1.25*R, 1.25*R])
xlim([Center-1.25*R, Center+1.25*R])
plot([Center-1.25*R, Center+1.25*R],[0, 0],'k-') % line through 0 tau
% Annotate graph
text(S(1,1)+R/12,-S(1,2),sprintf('A (%d, %d)',S(1,1),-S(1,2)),...
     'HorizontalAlignment','left','FontSize',18)
text(S(2,2)-R/12,S(1,2),sprintf('B (%d, %d)',S(2,2),S(1,2)),...
     'HorizontalAlignment','right','FontSize',18)
text(Center,1.1*R,'\tau_{max}',...
     'HorizontalAlignment','center','FontSize',18)
text(Center,-1.1*R,'\tau_{max}',...
     'HorizontalAlignment','center','FontSize',18)
text(Center+1.1*R,R/12,'\sigma_{1}',...
     'HorizontalAlignment','center','FontSize',18)
text(Center-1.1*R,R/12,'\sigma_{2}',...
     'HorizontalAlignment','center','FontSize',18)
text(Center+coor_x,coor_y,strcat('2\theta_{p}','=',ang,'°'),...
     'HorizontalAlignment','center','FontSize',18)
 text(Center-0.95*R,1*R,strcat('\tau cw'),...
     'HorizontalAlignment','center','FontSize',18,'Color','r')
 text(Center-0.95*R,-1*R,strcat('\tau ccw'),...
     'HorizontalAlignment','center','FontSize',18,'Color','r')
% More plot options
set(gca,'LineWidth',2,'FontSize',24,'FontWeight','normal','FontName','Times')
set(get(gca,'XLabel'),'String','\sigma (MPa)','FontSize',24,'FontWeight','bold','FontName','Times')
set(get(gca,'YLabel'),'String','\tau (MPa)','FontSize',24,'FontWeight','bold','FontName','Times')
scrsize = get(0,'ScreenSize');
set(gcf,'Position',scrsize)
set(gcf,'Position',[1 1 1000 1000])
hold off