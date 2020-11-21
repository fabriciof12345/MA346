function[p,k] = secant(f, p_0, tol, max_iter)
    crnt = p_0;
    for k = 1:max_iter
        p = crnt - f(crnt)/((f(crnt)-f(crnt-1))/(crnt-(crnt-1)));
        if abs(p-crnt) < tol
            return;
        end
        crnt = p;
    end
    disp('Secant method did not converge within tolernace as maximum number of iterations were reached');
end
