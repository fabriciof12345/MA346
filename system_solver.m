function system_solver(A,B)
    matrix_solved = inv(A) * B; %#ok<MINV>
    for k = 1:length(matrix_solved)
       fprintf("x%i = %g ",k ,matrix_solved(k));
    end
end
