let list_max ls =
  if ls = [] then failwith "List is empty"
  else
    let rec lmax = function
      | [] -> min_int
      | h::t -> max h (lmax t)
      in lmax ls
