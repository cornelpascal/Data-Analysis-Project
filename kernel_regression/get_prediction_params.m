function [a] = get_prediction_params(K, y, lambda)
  K_reg = K + lambda * eye(size(K));
  L = chol(K_reg, 'lower');
  z = L \ y;
  a = L' \ z;
endfunction
