function [P] = get_lower_inverse(L)
    if ~issquare(L) || ~istril(L)
        error('Input must be a square, lower triangular matrix.');
    end
    P = inv(L);
endfunction
