let last ls =
  let len = List.length ls in
    if len = 0 then None
    else let rev = List.rev ls in
      Some (List.hd rev);;

let ls1 = ["a";"b";"c";"d"];;
let ls2 = [];;
let ls3 = [1;2;3;4;5];;

last ls1;;
last ls2;;
last ls3;;
