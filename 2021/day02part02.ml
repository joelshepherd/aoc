let fold (x, y, v) line =
  let dir, num =
    match String.split_on_char ' ' line with
    | [ dir; num ] -> (dir, int_of_string num)
    | _ -> raise (Invalid_argument line)
  in
  match dir with
  | "forward" -> (x + num, y + (v * num), v)
  | "up" -> (x, y, v - num)
  | "down" -> (x, y, v + num)
  | _ -> raise (Invalid_argument dir)

let print (x, y, _) = print_endline (string_of_int (x * y))

let () = open_in "day02.txt" |> Util.fold_lines fold (0, 0, 0) |> print
