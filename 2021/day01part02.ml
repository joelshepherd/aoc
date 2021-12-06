let fold (count, prev) next =
  let next = int_of_string next in
  match prev with
  | [ a; b; c ] ->
      if b + c + next > a + b + c then (count + 1, [ b; c; next ])
      else (count, [ b; c; next ])
  | l -> (count, List.cons next l)

let print (answer, _) = print_endline (string_of_int answer)

let () = open_in "day01.txt" |> Util.fold_lines fold (0, []) |> print
