function probability = gaussian_distribution(X, mean_value, variance)
    [m, n] = size(X);
    normalization_term = (2 * pi)^(n / 2) * sqrt(det(variance));
    probability = zeros(m, 1);

    for i = 1:m
        x_minus_mu = X(i, :) - mean_value;
        exponent = -0.5 * (x_minus_mu / variance) * x_minus_mu';
        probability(i) = (1 / normalization_term) * exp(exponent);
    end
end