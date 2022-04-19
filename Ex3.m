m = input('Nhap m = ');
sum = 0;
for i = [0:100]
    if mod(i, m) == 0
        sum = sum + i;
    end
end
fprintf('%d\n', sum)