function [] = PPLap(g, x0, epsilon)
    saisothucte = 1000;
    step = 0;
    while saisothucte > epsilon
        step = step + 1;
        x1 = feval(g, x0);
        saisothucte = abs(x1 - x0);  
        x0 = x1;
    end
    fprintf('Nghiem la : %f\nSai so la: %f\nSo buoc lap la: %d\n', x0, saisothucte, step); 
end

