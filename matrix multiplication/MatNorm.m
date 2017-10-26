function [ y ] = MatNorm( A, p)
if p == 1
    y = max(sum(abs(A)));
elseif p == inf
    y = max(sum(abs(A')));
else
    fprintf('Cannot compute');
    return
end