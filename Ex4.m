N = input('Nhap N = ');
while(N ~= 0)
    for i = 1:N
        if (mod(N, i) == 0)
            fprintf('%d ', i)
        end
    end
    N = input('\nNhap N = ');
end
