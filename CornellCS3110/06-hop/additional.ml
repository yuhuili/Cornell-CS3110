(* product *)
let product = List.fold_left ( * ) 1

(* map composition *)
let lst = [1;2;3;4]

let f = function x -> (x+1);;
let g = function x -> (x-1);;

List.map f (List.map g lst);;
List.map (fun x -> f (g x)) lst;;


(* more list fun *)
let slst = ["a";"abc";"abcde";"abcdefg"]
let f1 = List.filter (fun x -> (String.length x) > 3);;

let flst = [0.;1.1;1.9]
let f2 = List.map (fun x -> x +. 1.);;

let strs = ["hi";"bye"]
let sep = ","
let f3 strs sep = List.fold_left (fun acc x -> if acc = "" then x else acc^sep^x) "" strs;;

