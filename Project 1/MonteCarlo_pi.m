%the pi function 

function My_Pi = MonteCarlo_pi( user_level )

%counters for points in circle and points in square
totalInCircle=0;
totalInSquare=0;

%for loop
for i=1:user_level
P=rand(2,1);
a=P(1);
b=P(2);


pointDist=sqrt(a^2+b^2);
if pointDist<=1
    totalInCircle=totalInCircle+1;
    totalInSquare=totalInSquare+1;
else
    totalInSquare=totalInSquare+1;
end


end
%plot



My_Pi=4*(totalInCircle/totalInSquare);


end