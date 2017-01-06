v = VideoWriter('VideoFileNameGoesHere.mp4','mpeg-4');
open(v);
timestep = 1;
xstep = 0.1;

for t = 0:timestep:200
    for x = 0:xstep:20
    xindex = floor( 1 + (10*x) );
    X(xindex) = x;
    Y(xindex) = SumOfCornersFunction(0.1,1,10,1,100,1000,0.2,x,t);
    Y_0(xindex) = 0;
        

    end
    plot(X,Y_0,'g')
    hold on
    plot(X,Y,'r')
    hold off
    axis([0 10 -5 5]);
	M(t+1) = getframe;
    writeVideo(v,M(t+1));
    
end

close(v)

% figure
% movie(M,5)

% figure
% plot(MatlabHelmholtzFunction(10,2,10,1,1,2),'o')