function GEresult = GElimination(Input_matrix, user_pick)
%if user_pick is one then is row echelon form
if user_pick == 1
    %Use Gaussian Elimination by calling the MuPAD function
     GEresult= feval(symengine,'linalg::gaussElim',Input_matrix);
     
elseif user_pick == 2
     %Use Gauss-Jordan Elimination by calling the rref function
     GEresult=rref(Input_matrix);
end

end