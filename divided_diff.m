function divided_diff(x, y)
    n = length(x);
    m = length(y);
    t = zeros(n,m);
    t(1:n,1) = y(1:n);
    for j = 2:n
        for i = 1:n+1-j
            t(i,j) = (t(i+1,j-1) - t(i,j-1))/(x(i+j-1)-x(i));
        end
    end
    disp(t(1:n:end));
    return;
end
