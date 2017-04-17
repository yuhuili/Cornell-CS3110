let list_max ls =
  if ls = [] then failwith "List is empty"
  else
    let rec lmax = function
      | [] -> min_int
      | h::t -> max h (lmax t)
    in lmax ls


let list_max_string ls =
  if ls = [] then "empty"
  else
    let i =
      let rec lmax = function
        | [] -> min_int
        | h::t -> max h (lmax t)
      in lmax ls
    in string_of_int i
