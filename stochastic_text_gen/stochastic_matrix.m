function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    n = numel(k_secv_set);
    m = numel(words_set);
    l = numel(k_secv_corpus);
    retval = zeros(n, m);

    [cuvinte, index_cuv] = ismember(corpus_words, words_set);
    [secvente, index_sec] = ismember(k_secv_corpus, k_secv_set);

    for i = 1 : l
        retval(index_sec(i), index_cuv(i + k)) = retval(index_sec(i), index_cuv(i + k)) + 1;
    end
end