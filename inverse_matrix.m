function inverse_matrix(A)
    [n,m] = size(A);
    if n~=m
        disp('This function requires a square matrix as an input!');
        return;
    end
    if det(A) == 0
        disp('The matrix given is singular because the determinant is 0');
        return;
    end
    disp(inv(A));

end