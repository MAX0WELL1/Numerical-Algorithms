function [ T ] = rand_tri( n , islower )
T = ones(n);
for i=1:n
    T(i+1:n,i) = 0;
end
if islower
    T = T';
end
T = T.*rand(n)+eye(n);% make sure T is well-conditioned.
end
