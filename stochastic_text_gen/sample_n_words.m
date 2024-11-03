function retval = sample_n_words(text, word_set, kscv_set, k, stoch, n)
  retval = text;
  for i = 1:n
    probs = sample_next_word(retval, word_set, kscv_set, k, stoch);
    if any(probs)
      next_word = randsample(word_set, 1, true, probs);
    else
      next_word = '';
    end
    if ~isempty(next_word)
      retval = [retval, ' ', next_word];
    end
  end
endfunction

function word = randsample(set, num_samples, replace, weights)
  cumulative_weights = cumsum(weights);
  sample = rand() * cumulative_weights(end);
  word = set{find(cumulative_weights >= sample, 1)};
endfunction
