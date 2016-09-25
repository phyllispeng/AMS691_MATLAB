%calculate the product of a vector and a matrix
function inner_pro = inner(matr, vect)
    % get the size of rows and columns of the matrix and vector
    row_matrix = size(matr,1);
    col_matrix = size(matr,2);
    row_vect = size(vect,1);
    col_vect = size(vect,2); %always 1
    
   if col_matrix ~= row_vect
    % check if the inner product calculation is valid  
    inner_pro ='No result, the inner matrix dimensions must agree';
   else
        %make a new matrix to store the answer
        result_matrix = zeros (row_matrix,col_vect);
        %loop size should be the number of elements in the vector
        for i=1:row_matrix
            newElement=0;
            for j=1:col_matrix
                % add up each element
                newElement=newElement+matr(i,j)*vect(j);
            end
            % add the element to the new matrix
            result_matrix(i)=newElement;
        end
        % return the new matrix
        inner_pro=result_matrix;
   end
end