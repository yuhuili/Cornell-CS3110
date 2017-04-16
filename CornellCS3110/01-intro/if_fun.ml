let rec has_elem elem = function
  | [] -> false
  | h :: t -> if h = elem then true else has_elem elem t;;

let big_month = ["January";"March";"May";"July";"August";"October";"December"];;
let small_month = ["April";"June";"September";"November"];;
let feb = ["February"];;

let valid_date d m =
  if has_elem m big_month then
    (if d >= 1 && d <= 31 then true else false)
  else if has_elem m small_month then
    (if d >= 1 && d <= 30 then true else false)
  else if has_elem m feb then
    (if d >= 1 && d <= 28 then true else false)
  else false;;
