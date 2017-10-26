function [ t ] = time_test_lu(n)
A = rand(n);
A = A*A';
t = [0 0];
tic;
for i=1:100
    LU_s(A);
end
t(1) = toc;
tic;
for i=1:100
    LU_f(A);
end
t(2) = toc;
end

