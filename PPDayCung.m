function [] = PPDayCung(fx, a, c, epsilon)
    saisothucte = 1000;
    step = 0;
    fprintf('%5s\t%5s\t%5s\t%5s\t%5s\t%5s\t%5s\t\n', 'Lap', 'a', 'b', 'c', 'fa', 'fb', 'fc');
    while saisothucte > epsilon
        step = step + 1;
        fa = feval(fx, a);
        fc = feval(fx, c);
        b = (a*fc-c*fa)/(fc-fa);
        fb = feval(fx, b);
        fprintf('%5d\t%.5f\t%.5f\t%.5f\t%.5f\t%.5f\t%.5f\n', step, a, b, c, fa, fb, fc);
        if(fa*fb)<= 0
            c = b;
        else
            a = b;
        end
        saisothucte = abs(fb);
    end
end

