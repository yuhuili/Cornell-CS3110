module CharMap = Map.Make(Char)

let is_for m = CharMap.mapi (fun k v -> ((String.make 1 k) ^ " is for " ^ v)) m
