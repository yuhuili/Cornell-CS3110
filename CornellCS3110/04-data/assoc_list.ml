(* insert a binding from key k to value v in association list d *)
let insert k v d = (k,v)::d

(* find the value v to which key k is bound, if any, in the assocation list *)
let rec lookup k = function
| [] -> None
| (k',v)::t -> if k=k' then Some v else lookup k t

let dic = insert 1 "one" (insert 2 "two" (insert 3 "three" []));;
lookup 1 dic;;
lookup 2 dic;;
