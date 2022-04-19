function [] = CheckPrime(N)
    N = input('Nhap N = ');
    check = 1;
    for i = 2:sqrt(N)
        if mod(N, i) == 0
            check = 0;
            break;
        end
    end
    if check == 1
        fprintf('%d la SNT\n', N)
    else
        fprintf('%d khong la SNT\n', N)
    end
end

