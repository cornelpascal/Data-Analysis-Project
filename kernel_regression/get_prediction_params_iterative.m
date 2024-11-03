function [a] = get_prediction_params_iterative(K, y, lambda)
    n = size(K, 1);
    A = K + lambda * eye(n);
    b = y;
    a0 = zeros(n, 1);
    tol = 1e-6;
    max_iter = 1000;
    [a, flag] = pcg(A, b, tol, max_iter, [], [], a0);
    if flag != 0
        error('PCG did not converge within the maximum number of iterations.');
    end
endfunction

