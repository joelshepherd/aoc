let () = 
  let ic = open_in "day01.txt" in
    match input_line ic with
    | line -> print_endline line
    | exception End_of_file -> close_in ic;
