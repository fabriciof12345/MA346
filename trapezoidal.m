function trapezoidal(f, a, b, n)
    h = (b-a)/n;
    varA = f(a)+f(b);
    varB = 0;
    for i = 1:n-1
        varX = a + i*h;
        varB = varB + f(varX);
    end
    sum = h*(varA + 2 * varB)/2;
    disp(sum);
end
