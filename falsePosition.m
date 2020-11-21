function [p,k] = falsePosition(f, a, b, tol, max_iter)
    if (f(a) * f(b) >0)
        error('f(a) and f(b) should not be of the same sign!');
    end
    if f(a) == 0
        disp(a);
        return;
    end
    if f(b) == 0
        disp(b);
        return;
    end
    for k=1:max_iter
        p = a - f(a) * ( (b-a) / (f(b) -f(a)));
        if (abs(f(p)) < tol)
            disp("Success")
            break;
        end
        if k == max_iter - 1
            disp("Warning. Max number of iterations reached")
        end
        if (f(a)*f(p) < 0)
            b = p;
        elseif(f(p)*f(b)<0)
            a = p;                  
        end
    end
