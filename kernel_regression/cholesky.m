function [L] = cholesky(A)
    [n, m] = size(A);
    if n ~= m
        error('Matrix A must be square');
    end
    L = zeros(n, n);
    for i = 1:n
        for j = 1:i
            if i == j
                L(i, j) = sqrt(A(i, i) - sum(L(i, :) .^ 2));
            else
                L(i, j) = (A(i, j) - sum(L(i, :) .* L(j, :))) / L(j, j);
            end
        end
    end
endfunction

