let rec last = function
  | [] -> None
  | [x] -> Some x
  | _ :: t -> last t;;

let ls1 = ["a";"b";"c";"d"];;
let ls2 = [];;
let ls3 = [1;2;3;4;5];;

last ls1;;
last ls2;;
last ls3;;
