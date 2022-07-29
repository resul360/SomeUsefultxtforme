
x = linspace(0,300);
y1 = sin(x/600);
y2 = sin(x/60);
y3 = sin(x/30);

% Plot into first tile three times
% tiledlayout('flow')
% nexttile
hold on
plot(x,y1)
plot(x,y2)
plot(x,y3)
