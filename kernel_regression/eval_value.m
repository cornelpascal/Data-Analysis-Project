function pred = eval_value(x, X, f, f_param, a)
    pred = 0;
    for i = 1:size(X, 1)
        k = f(x, X(i, :), f_param);
        pred = pred + a(i) * k;
    end
endfunction
