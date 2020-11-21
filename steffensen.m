%I pledge my honor that I have abided by the Stevens Honor System
%Fabricio Flores
function steffensen(g,p_0, tol, iter)
    i = 1;
    while i <= iter
        p_1 = g(p_0);
        p_2 = g(p_1);
        p = p_0 - (p_1 - p_0)^2 / (p_2-2*p_1+p_0);
        if abs(p-p_0) < tol
            disp(p);
            return;
        end
        i = i + 1;
        p_0 = p;
    end
    fprintf('Method failed after N iterations, N = %d', iter);
        
end



