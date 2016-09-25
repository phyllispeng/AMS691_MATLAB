%calculate the prodcut of a vector and a matrix
function inner_pro = inner(matr, vect)

    row_matrix = size(matr,1);
    col_matrix = size(matr,2);
    row_vect = size(vect,1);
    col_vect = size(vect,2); %always 1
    
   if col_matrix ~= row_vect
    %make a new matrix to store the answer
    
    inner_pro ='No result, the inner matrix dimensions must agree';
   else
        result_matrix = zeros (row_matrix,col_vect);
        %loop size should be the number of elements in the vector
        for i=1:row_matrix
            newElement=0;
            for j=1:col_matrix
                newElement=newElement+matr(i,j)*vect(j);
            end
            result_matrix(i)=newElement;
        end

        inner_pro=result_matrix;
   end
end