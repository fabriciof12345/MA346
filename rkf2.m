function rkf2(a,b,alpha,tol,hmax,hmin)
    format shortE;
    %function
    f=@(t,y) y-t^2+1;
    
    %initial conditions
    a=0;
    b=2;
    h=0.25;
    tol=10^(-5);
    hmax=.25;
    hmin=.01;
    
    t = a;
    alpha=0.5;
    w = alpha;
    FLAG = 1;
    
    A =[t,w];
    disp(A);
    
    while FLAG == 1
        K1 = h*f(t,w);
        K2 = h*f(t + h/4, w + K1/4 );
        K3 = h*f(t + 3*h/8, w + 3*K1/32 + 9*K2/32);
        K4 = h*f(t + 12*h/13, w + 1932*K1/2197 - 7200*K2/2197 + 7296*K3/2197);
        K5 = h*f(t + h, w + 439*K1/216 - 8*K2 + 3680*K3/513 - 845*K4/4104);
        K6 = h*f(t + h/2, w - 8*K1/27 + 2*K2 - 3544*K3/2565 + 1859*K4/4104 - 11*K5/40);
        R = (1/h) * (K1/360 - 128*K3/4275 - 2197*K4/75240 + K5/50 + 2*K6/55);
        
        if R <= tol
           t = t + h;
           w = w + 25*K1 + 1408*K3/2565 + 2197*K4/4104 - K5/5;
           B=[t,w,h];
           disp(B)
           %plot(t,w)
        end
        delta = .84 * power((tol/R), 1/4);
        if delta <= .1
            h = .1 * h;
        elseif delta >= 4   
            h = 4*h;
        else
            h = delta*h;
        end
        if h > hmax
           h = hmax; 
        end
        if t >=b
            FLAG = 0;
        elseif t + h > b
            h = b - t;
        elseif h < hmin
            FLAG = 0;
            disp('minimum h exceeded')
        end
    end
end