function [ t ] = time_test_tri(n, row_oriented)
T = rand_tri(n,0);
b = rand(n,1);
tic;
for i=1:100
    tri_system_solver(T,b,row_oriented);
end
t = toc;
end