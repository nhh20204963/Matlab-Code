function DaysInMonth(M)
M = input('Nhap so thang bat ky: ');
switch(M)
    case {1, 3, 5, 7, 8, 10, 12}
        fprintf('Thang %d co 31 ngay\n', M)
    case {4, 6, 9, 11}
        fprintf('Thang %d co 30 ngay\n', M)
    case 2
        fprintf('Thang %d co 28 hoac 29 ngay\n', M)
end
end


