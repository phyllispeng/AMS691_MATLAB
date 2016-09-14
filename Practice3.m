%Practic 3
%fixedValue=100000000;
totalInCircle=0;
totalInSquare=0;
total in cirle
total in square
final ratio
for loop
for i=1:fixedValue
P=rand(2,1);
x=P(1);
y=P(2);

pointDist=sqrt(x^2+y^2);
if pointDist<=1
    totalInCircle=totalInCircle+1;
    totalInSquare=totalInSquare+1;
else
    totalInSquare=totalInSquare+1;
end

end
finalRatial=4*(totalInCircle/totalInSquare);


%while loop
NewRatial=0;
while NewRatial<3.1416
P=rand(2,1);
x=P(1);
y=P(2);

pointDist=sqrt(x^2+y^2);
if pointDist<=1
    totalInCircle=totalInCircle+1;
    totalInSquare=totalInSquare+1;
else
    totalInSquare=totalInSquare+1;
end
finalRatial=4*(totalInCircle/totalInSquare);
NewRatio=finalRatial;
end
