function [L , U ,p ]= lutx ( A )
[n , n ]= size ( A ); %n = size cua ma tran A
p =(1: n )'; % p la ma tran chuyen vi tu ma tran bat dau tu 1 den n
for k =1: n -1 
    [r , m ]= max ( abs ( A ( k :n , k ))); 
    % ph?n t? có tr? tuy?t ??i l?n nh?t trong c?t k
    m = m +k -1;
    % d?ng kh? n?u phát hi?n các c?t toàn 0
    if( A (m , k )~=0)
        % d?i ch? dòng xoay
        if( m ~= k )
            A ([ k m ] ,:)= A ([ m k ] ,:);
            p([ k m ])= p ([ m k ]);
        end
        % tính các nhân t?
        i = k +1: n ;
        A (i , k )= A (i , k )/ A (k , k );
        % tính các ph?n t? c?a ph?n còn l?i
        j = k +1: n ;
        A (i , j )= A (i , j ) - A (i , k )* A (k , j );
    end
end
% tr? l?i k?t qu?
L = tril (A , -1)+ eye (n , n );%eye t?o ma tr?n ??n v?
U = triu ( A );
end