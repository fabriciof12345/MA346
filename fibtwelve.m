%I pledge my honor that I have abided by the Stevens Honor System
%Fabricio Flores
function fibtwelve(n)
    if n < 0
        disp("Give nonnegative integer please.")
        return
    end
    f = (1 /sqrt(5))*(((1+sqrt(5))/2)^n - ((1-sqrt(5))/2)^n);
    disp(cast(f,'single'));
    return
end

