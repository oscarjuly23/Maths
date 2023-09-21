 figure
 x0=0;
 y0=0;
 width=700;
 height=700;
 set(gcf,'position',[x0,y0,width,height])

 hold on
 for i = 1:11
     xcircle = linspace(0,i,100);
     ycircle = sqrt(i^2-xcircle.^2);
     plot(xcircle,ycircle,'k',xcircle,-ycircle,'k',-xcircle,ycircle,'k',-xcircle,-ycircle,'k')
 end