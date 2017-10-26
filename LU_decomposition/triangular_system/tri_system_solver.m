function [ x ] = tri_system_solver(T, b, row_oriented)
if nargin<3
      row_oriented = true;
end
n = size(T,1);
x = zeros(n,1);
if row_oriented
    if T(1,n) == 0 %Forward Substitution for Lower Triangular System
        for i = 1:n
            x(i) = (b(i) - T(i,1:i-1)*x(1:i-1))/T(i,i);
        end 
    else %Back Substitution for Upper Triangular System
        for i = n:-1:1
            x(i) = (b(i) - T(i,i +1:n)*x(i+1:n))/T(i,i);
        end  
    end
else
    if T(1,n) == 0 %%Forward Substitution for lower triangular system
        index = 1:n;
    else %Back Substitution for upper triangular system
        index = n:-1:1;
    end
    for i = index
        x(i) = b(i)/T(i ,i);
        b = b - T(:, i) * x(i);
    end
end

