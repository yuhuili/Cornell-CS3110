let (--) i j =
  let rec from i j l =
    if i>j then l
    else from i (j-1) (j::l)
    in from i j []

let sum_cube_odd n =
  let arr = 0 -- n in
    let a = List.map (fun x -> if (x land 1) = 0 then 0 else x*x*x) arr in
      List.fold_left (fun acc x -> acc+x) 0 a
