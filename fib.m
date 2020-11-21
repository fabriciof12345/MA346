%I pledge my honor that I have abided by the Stevens Honor System
%Fabricio Flores
function f = fib(n)
    if n < 0
        disp("Give nonnegative integer please.")
        return
    end
    if (n == 1) || (n == 0)
        f = 1;
    else
        f = fib(n-1) + fib(n-2);
    end
end

