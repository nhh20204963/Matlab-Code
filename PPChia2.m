function [] = PPChia2(fx, a, c, epsilon)
    saisothucte = 1000;
    step = 0;
    fprintf('%5s\t%5s\t%5s\t%5s\t%5s\t%5s\t%5s\t\n', 'Lap', 'a', 'b', 'c', 'fa', 'fb', 'fc');
    while saisothucte > epsilon
        step = step + 1;
        b = (a + c) / 2;
        fa = feval(fx, a);
        fb = feval(fx, b);
        fc = feval(fx, c);
        fprintf('%5d\t%.5f\t%.5f\t%.5f\t%.5f\t%.5f\t%.5f\n', step, a, b, c, fa, fb, fc);
        if(fa*fb)<= 0
            c = b;
        else
            a = b;
        end
        saisothucte = abs(fb);
    end
end

