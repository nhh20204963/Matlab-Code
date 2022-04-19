function [] = PPCatTuyen(f, x0, x1, epsilon)
    saisothucte = 1000;
    step = 0;
    while saisothucte > epsilon
        step = step + 1;
        fx1 = feval(f, x1);
        fx0 = feval(f, x0);
        dfx1 = (fx1 - fx0) / (x1 - x0);
        x2 = x1 - fx1 / dfx1;
        saisothucte = abs(feval(f, x2));
        x0 = x1;
        x1 = x2;
    end
    fprintf('Nghiem la : %f\nSai so la: %f\nSo buoc lap la: %d\n', x2, saisothucte, step); 
end

