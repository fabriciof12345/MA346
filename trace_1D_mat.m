%I pledge my honor that I have abided by the Stevens Honor System
%Fabricio Flores
function trace_1D_mat(v)
    sum = 0;
    increment = sqrt(length(v)) + 1;
    for x = 1 : increment : length(v)
        sum = sum + v(x);
    end
    disp(sum);
end

