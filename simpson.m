function simpson(f, a, b, n)
    h = (b-a)/n;
    varA = f(a) + f(b);
    varB = 0;
    varC = 0;
    for i = 1:n-1
        varX = a + i*h;
        if (mod(i,2) == 0)
            varC = varC + f(varX);
        else
            varB = varB +f(varX);
        end
    end
    sum = h*(varA+2*varC + 4*varB)/3;
    disp(sum);
end
