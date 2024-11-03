function probs = sample_next_word (text, words_idx, k_secv_idx, k, stoch)
  probs = [];
  latest_k_sequence = k_secv(text, k){end};
  idx = lookup(k_secv_idx.keys, latest_k_sequence);
  if idx != 0
    probs = stoch(idx, :);
  else
    probs = zeros(1, length(words_idx.keys()));
  end
endfunction
