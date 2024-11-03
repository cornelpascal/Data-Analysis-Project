function [mean_values variances] = estimate_gaussian(X)
    m = size(X,1);
    mean_values = (1/m) * sum(X);
    variances = (1/m) * (X - mean_values)' * (X - mean_values);
endfunction
