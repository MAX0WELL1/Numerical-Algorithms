error = 0;
loss = 0;
for i = 1:100
    A = rand(100) + eye(100);
    [L1,U1] = LU_f(A);
    [L2,U2] = LU_s(A);
    error = max(error, norm(L1-tril(L1),'fro'));
    error = max(error, norm(L2-tril(L2),'fro'));
    error = max(error, norm(U1-triu(U1),'fro'));
    error = max(error, norm(U2-triu(U2),'fro')); % check the triangular matrix 
    loss = max(loss, norm(L1*U1-A,'fro'));
    loss = max(loss, norm(L2*U2-A,'fro')); % check the decomposition
end
fprintf('The max difference between the results and triangular matrix is %g.\n',error);
fprintf('The max decomposition loss is %g.\n',loss);