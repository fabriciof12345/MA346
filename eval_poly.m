%I pledge my honor that I have abided by the Stevens Honor System
%Fabricio Flores
function eval_poly(coefs,x)
    value = coefs(1);
    for n = 2: length(coefs)
        value = value * x + coefs(n);
    end
    disp(value)
end
