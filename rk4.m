function rk4(f,a,b,alpha,h)
    delta = (b-a)/h;
    t = a;
    w = alpha;
    A = [t,w];
    disp(A);
    for i = 1:h
        K1 = delta*f(t,w);
        K2 = delta*f(t + delta/2, w + K1/2);
        K3 = delta*f(t + delta/2, w + K2/2);
        K4 = delta*f(t+h, w+K3);
        w = w + (K1 + 2*K2 + 2*K3 + K4)/6;
        t = a + i*h;
        disp([t,w]);
    end

end