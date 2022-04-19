name = input('Nhap ten sv: ','s')
grade = input('Nhap diem sv: ')
if grade <= 10 & grade >= 8.5
    fprintf('A');
elseif grade >= 7
    fprintf('B');
elseif grade >= 5.5
    fprintf('C');
elseif grade >= 4
    fprintf('D');
else 
    fprintf('F');
end
