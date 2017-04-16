let count a =
  let len = List.length a in
    let len_str = string_of_int len in
      print_endline len_str;;


let ls1 = ["a";"b";"c";"d"];;
let ls2 = [];;
let ls3 = [1;2;3;4;5];;

count ls1;;
count ls2;;
count ls3;;
