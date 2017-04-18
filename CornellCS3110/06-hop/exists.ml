let rec exists_rec p = function
  | [] -> false
  | h::t -> (p h) || (exists_rec p t)

let exists_fold p =
  List.fold_left (fun acc x -> acc || (p x)) false

let exists_lib p =
  List.exists p;;
