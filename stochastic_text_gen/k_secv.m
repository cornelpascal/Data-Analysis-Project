function B = k_secv(A, k)
  n = length(A) - k;
  for i = 1 : n
    B{i, 1} = strjoin(A(i : i + k - 1));
  end
endfunction
