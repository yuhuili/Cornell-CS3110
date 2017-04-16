let rec lastn2ndlast = function
  | [] | [_] -> None
  | [x;y] -> Some (x,y)
  | _ :: t -> lastn2ndlast t;;

let ls1 = ["a";"b";"c";"d"];;
let ls2 = [];;
let ls3 = [1;2;3;4;5];;

lastn2ndlast ls1;;
lastn2ndlast ls2;;
lastn2ndlast ls3;;
