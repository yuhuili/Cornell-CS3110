let list_max_string ls =
  if ls = [] then "empty"
  else
    let i =
      let rec lmax = function
        | [] -> min_int
        | h::t -> max h (lmax t)
        in lmax ls
      in string_of_int i
