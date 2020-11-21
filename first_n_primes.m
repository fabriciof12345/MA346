%I pledge my honor that I have abided by the Stevens Honor System
%Fabricio Flores
function first_n_primes(N)
    tic;
    arrayOfPrimes = [];
    numbers = 1;
    while true
        numbers = numbers + 1;
        if length(factor(numbers)) == 1
            arrayOfPrimes = [arrayOfPrimes,numbers];  %#ok<AGROW>
        end
        if length(arrayOfPrimes) == N
            disp(arrayOfPrimes);
            toc;
            return
        end
    end
end