let p1 = function
  | x :: _ -> x = "bigred"
  | _ -> false

let p2 = function
  | [_;_] | [_;_;_;_] -> true
  | _ -> false

let p3 = function
  | a::b::_ -> a=b
  | _ -> false
