function [L,U] = LU_f(A)
[m,n] = size(A);
U = eye(n);  % initialize
L = A;
if m~=n
    fprintf('Dim error\n');
    return
end
for k= 1:n
    for j= (k+1):n
        U(k,j) = L(k,j)/(L(k,k)+eps);
        L(:,j) = L(:,j) - U(k,j)*L(:,k);
    end
end
end