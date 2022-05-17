function [L , U ,p ]= lutx ( A )
[n , n ]= size ( A ); %n = size cua ma tran A
p =(1: n )'; % p la ma tran chuyen vi tu ma tran bat dau tu 1 den n
for k =1: n -1 
    [r , m ]= max ( abs ( A ( k :n , k ))); 
    % ph?n t? c� tr? tuy?t ??i l?n nh?t trong c?t k
    m = m +k -1;
    % d?ng kh? n?u ph�t hi?n c�c c?t to�n 0
    if( A (m , k )~=0)
        % d?i ch? d�ng xoay
        if( m ~= k )
            A ([ k m ] ,:)= A ([ m k ] ,:);
            p([ k m ])= p ([ m k ]);
        end
        % t�nh c�c nh�n t?
        i = k +1: n ;
        A (i , k )= A (i , k )/ A (k , k );
        % t�nh c�c ph?n t? c?a ph?n c�n l?i
        j = k +1: n ;
        A (i , j )= A (i , j ) - A (i , k )* A (k , j );
    end
end
% tr? l?i k?t qu?
L = tril (A , -1)+ eye (n , n );%eye t?o ma tr?n ??n v?
U = triu ( A );
end