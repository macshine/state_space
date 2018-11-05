%% manifold tasks

figure(1)
filename = 'manifold10f.gif';


for t = 1:379
    tt = t+9;
    gscatter(SCORE5(1:tt*5,1),SCORE5(1:tt*5,2),reg(1:tt*5,1),[.37 .31 .64; .21 .47 .73; .25 .64 .70; .44 .78 .65; .63 .85 .64; .83 .93 .61; .92 .96 .62; .96 .46 .27],'.',30)
    hold on
    plot(SCORE5(1:tt*5-9,1),SCORE5(1:tt*5-9,2),'k','LineWidth',.5)
    plot(SCORE5(tt*5-9:tt*5,1),SCORE5(tt*5-9:tt*5,2),'k','LineWidth',5)
    hold off
    xlim([-10 8])
    ylim([-7 7])
    
    set(gcf,'color','w');
    
    hLeg = legend('filename');
    set(hLeg,'visible','off');
    
    xlabel('tPC1')
    ylabel('tPC2')
    
    drawnow
    frame = getframe(1);
    im = frame2im(frame);
    [imind,cm] = rgb2ind(im,256);
    
   
    
    if t == 1;
        imwrite(imind,cm,filename,'gif', 'Loopcount',inf);
    else
        imwrite(imind,cm,filename,'gif','WriteMode','append');
    end
    
end
