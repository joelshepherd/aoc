let rec fold_lines fn acc ic =
  match input_line ic with
  | line -> fold_lines fn (fn acc line) ic
  | exception End_of_file ->
      close_in ic;
      acc
