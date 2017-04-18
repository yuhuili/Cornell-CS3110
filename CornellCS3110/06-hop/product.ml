let product_left ls =
  List.fold_left (fun acc x -> acc*x) 1 ls

let product_right ls =
  List.fold_right (fun x acc -> x*acc) ls 1
