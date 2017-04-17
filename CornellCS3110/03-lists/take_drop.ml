let rec take_not_tail n = function
  | [] -> []
  | h :: t -> if n>0 then h::(take_not_tail (n-1) t) else [];;

let rec take_acc acc n = function
  | [] -> []
  | h :: t -> if n = 0 then acc else (take_acc (h::acc) (n-1) t)

let take n ls =
  List.rev (take_acc [] n ls)


let rec drop n = function
  | [] -> []
  | h :: t -> if n = 0 then h::t else (drop (n-1) t)
