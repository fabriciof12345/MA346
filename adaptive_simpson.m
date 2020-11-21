function adaptive_simpson(f,a,b,tolerance, max_level)
    app = 0;
    i = 1;
    tol(i) = 10 * tolerance;
    a(i) = a;
    h(i) = (b-a)/2;
    FA(i) = f(a);
    FC(i) = f(a + h(i));
    FB(i) = f(b);
    S(i) = h(i) * (FA(i) + 4*FC(i) + FB(i))/3;
    L(i) = 1;
    
    while i > 0
        FD = f(a(i) + h(i)/2);
        FE = f(a(i) + 3*h(i)/2);
        S1 = h(i)*(FA(i) + 4*FD + FC(i))/6;
        S2 = h(i)*(FC(i) + 4*FE + FB(i))/6;
        v1 = a(i);
        v2 = FA(i);
        v3 = FC(i);
        v4 = FB(i);
        v5 = h(i);
        v6 = tol(i);
        v7 = S(i);
        v8 = L(i);
        i = i - 1;
        if abs(S1 + S2 - v7) < v6
            app = app + (S1 + S2);
        else
            if (v8 >= max_level)
                disp('LEVEL EXCEEDED');
                return;
            else
               i = i + 1;
               a(i) = v1 + v5;
               FA(i) = v3;
               FC(i) = FE;
               FB(i) = v4;
               h(i) = v5/2;
               tol(i) = v6/2;
               S(i) = S2;
               L(i) = v8 + 1;
               i = i + 1;
               a(i) = v1;
               FA(i) = v2;
               FC(i) = FD;
               FB(i) = v3;
               h(i) = h(i-1);
               tol(i)  = tol(i-1);
               S(i) = S1;
               L(i) = L(i-1);
            end
        end
    end
    format long;
    disp(app);
end



