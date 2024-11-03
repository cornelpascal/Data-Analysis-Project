function retval = k_secv_idx(distinct_k_sec)
  indices = 1:length(distinct_k_sec);
  retval = containers.Map(distinct_k_sec, indices);
endfunction