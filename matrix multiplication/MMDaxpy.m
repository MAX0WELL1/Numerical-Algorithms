function[ C ] = MMDaxpy(A,B)
[m1,n1] = size(A);
[m2,n2] = size(B);
if n1~=m2
    fprintf('Dim error\n');
    return
end
C = zeros(m1,n2);
for i =1:n2
    for j =1:n1
        C(:,i) = C(:,i) + A(:,j)*B(j,i);
    end
end
end