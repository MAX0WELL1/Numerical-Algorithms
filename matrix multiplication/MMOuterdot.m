function[ C ] = MMOuterdot(A,B)
[m1,n1] = size(A);
[m2,n2] = size(B);
if n1~=m2
    fprintf('Dim error\n');
    return
end
C = zeros(m1,n2);
for i =1:n1
    C = C+A(:,i)*B(i,:);
end
end