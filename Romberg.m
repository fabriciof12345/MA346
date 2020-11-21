function Romberg(f, a, b, epsilon)
    h = b -a;
    r(1,1) = (h/2) * (f(a) + f(b));
    for i = 2:epsilon
        sum = 0;
        for k = 1: 2^(i-2)
            sum = sum + f(a+(k-.5)*h);
        end
        r(2,1) = (r(1,1) +h*sum) / 2;
        for j = 2:i
           r(2,j) = r(2,j-1) + (r(2,j-1)-r(1,j-1))/ (4^(j-1)-1); 
        end
        for j = 1:i
           disp(r(2,j)); 
        end
        h = h/2;
        for j = 1:i
           r(1,j) = r(2,j); 
        end
    end
end


