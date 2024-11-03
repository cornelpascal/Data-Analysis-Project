function unique_cell_array = distinct_k_secv (cell_array)
  sorted_cell_array = sort(cell_array);
  unique_cell_array = unique(sorted_cell_array);
endfunction
