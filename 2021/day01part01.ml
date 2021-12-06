let fold (count, prev) next =
  let next = int_of_string next in
  if next > prev then (count + 1, next) else (count, next)

let print (answer, _) = print_endline (string_of_int answer)

let () = open_in "day01.txt" |> Util.fold_lines fold (0, 9999) |> print
