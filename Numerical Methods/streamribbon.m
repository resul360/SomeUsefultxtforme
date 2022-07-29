[sx,sy,sz]=meshgrid([-1 0 1],[-1 0 1],-6);
streamribbon(x,y,z,u,v,w,sx,sy,sz);
[sx,sy,sz]=meshgrid([1:6],[0],-6)
streamribbon(x,y,z,u,v,w,sx,sy,sz);
shading interp
view(-30,10)
axis off tight
camproj perspective
camva(66)
camlookat
camdolly(0,0,.5,'fixtarget')
camlight