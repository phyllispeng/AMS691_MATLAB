%Practice 2 
%   1) Create a 10x10 array with entries 
%   defined by a_ij = i^2 + j^2.
for i=1:10
    for j=1:10
        a(i,j)=i^2+j^2;
    end
end
%   2) Create a 12x12 upper diagonal array with entries 
%   defined by a_ij = ij if j>=i, and a_ij = 0 if j < i.
for i2=1:12
    for j2=1:12
        if j2>i2
        a2(i2,j2)=i2*j2;
        else
        a2(i2,j2)=0;
        end
    
        
    end
end

%   3)Create an 8x8 array whose diagonal entries are 0, 
%   and whose off diagonal entries are defined by a_ij = 1/|i-j|.
for i3=1:8
    for j3=1:8
        if i3==j3
         a3(i3,j3)=0;
        else
            a3(i3,j3)=1/abs(i3-j3);
        end
    end
end


%   4)Create a 3x50 array filled with random values from (0,1);
%   this matrix will be referred to as M in exercises 5 and 6.

