function [L,U] = LU_s(A)
[m,n] = size(A);
L = eye(n);
U = A;
if m~=n
    fprintf('Dim error\n');
    return
end
for k= 1:n
    for j= (k+1):n
        L(j,k) = U(j,k)/(U(k,k)+eps);
        for i = k:n
            U(j,i) = U(j,i) - L(j,k)*U(k,i);
        end
    end
end
end