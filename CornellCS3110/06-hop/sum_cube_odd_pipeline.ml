let pipeline x f = f x
let (|>) = pipeline

let (--) i j =
  let rec from i j l =
    if i>j then l
    else from i (j-1) (j::l)
    in from i j []

let sum_cube_odd n =
  0 -- n
  |> List.map (fun x -> if x land 1 = 0 then 0 else x*x*x)
  |> List.fold_left (+) 0
