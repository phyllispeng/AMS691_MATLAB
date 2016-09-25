%the pi function 

function My_Pi = MonteCarlo_pi( user_level )

%counters for points in circle and points in square
totalInCircle=0;
totalInSquare=0;
 
%for loop that genrate all the dots
for i=1:user_level

% P is the random point
P=rand(2,1);
% a is the x value of the point, and b is the y value
% if the distance of point P to (0,0) is smaller and equal to 1
% then the point is inside the cirle 
% else the point is out side the circle but inside the 1x1 square 
a=P(1);
b=P(2);
pointDist=sqrt(a^2+b^2);

if pointDist<=1
    totalInCircle=totalInCircle+1;
    totalInSquare=totalInSquare+1;
    % plot the dot on the graph
    plot(a,b,'.r');
    hold on;
else
    totalInSquare=totalInSquare+1;
    % plot the dot on the graph
     plot(a,b,'.c');
     hold on;
end


end
% plot the quarter cicle 
r=1;
xc=0;
yc=0;

theta = linspace(0,0.5*pi);
x=r*cos(theta)+xc;
y=r*sin(theta)+yc;

plot(x,y,'r');
axis square;
axis([0 1 0 1]);

% return the value of PI that we calculated 
My_Pi=4*(totalInCircle/totalInSquare);


end