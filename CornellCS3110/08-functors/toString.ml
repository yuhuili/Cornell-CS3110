module type ToString = sig
  type t
  val to_string : t -> string
end

module Print (M:ToString) = struct
  let print k = print_endline (M.to_string k)
end

module Int = struct
  type t = int
  let to_string k = string_of_int k
end

module PrintInt = Print(Int)

module MyString = struct
  type t = string
  let to_string k = k
end

module PrintString = Print(MyString)
