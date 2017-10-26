error = 0;
n = 200;
for i=1:1000
    T = rand_tri(n,rand>0.5); %generate lower or upper triangular system randomly
    b = rand(n,1);
    re = tri_system_solver(T, b, rand>0.5);%use the two method randomly
    loss = sum((T*re-b).^2)/sum(b.^2);
    error = max(loss,error);
end
fprintf('The relative error is %g.\n',error);