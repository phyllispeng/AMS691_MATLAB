%the pi function 

function My_Pi = MonteCarlo_pi( user_level )

%counters for points in circle and points in square
totalInCircle=0;
totalInSquare=0;
 
%for loop
%plot


for i=1:user_level
    
P=rand(2,1);
a=P(1);
b=P(2);


pointDist=sqrt(a^2+b^2);
if pointDist<=1
    totalInCircle=totalInCircle+1;
    totalInSquare=totalInSquare+1;
    
    plot(a,b,'.r');
    
%axis([0 1 0 1]);
    hold on;
else
    totalInSquare=totalInSquare+1;
     plot(a,b,'.c');
      
%axis([0 1 0 1]);
    hold on;
end


end
%plot
r=1;
xc=0;
yc=0;

theta = linspace(0,0.5*pi);
x=r*cos(theta)+xc;
y=r*sin(theta)+yc;

plot(x,y,'r');
axis square;
axis([0 1 0 1]);



My_Pi=4*(totalInCircle/totalInSquare);


end