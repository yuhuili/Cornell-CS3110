let is_before (a,b,c) (x,y,z) =
  (a < x) || ((a = x) && (b < y)) || ((a = x) && (b = y) && c < z)

let rec earliest = function
  | [] -> None
  | h :: t -> match earliest t with
                | None -> Some h
                | Some d -> if is_before h d then Some h else Some d
