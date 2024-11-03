function retval = distinct_words (tokens)
  sorted_tokens = sort(tokens);
  retval = unique(sorted_tokens);
endfunction
