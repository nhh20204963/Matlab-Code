function [] = PPNewton(f, df, x0, epsilon)
    saisothucte = 1000;
    step = 1;
    while saisothucte > epsilon
        step = step + 1;
        fx = feval(f, x0);
        dfx = feval(df, x0);
        x = x0 - fx / dfx;
        saisothucte = abs(feval(f, x));
        x0 = x;
    end
    Nghiem = x;
    sai_so = saisothucte;
    so_buoc_lap = step;
end

