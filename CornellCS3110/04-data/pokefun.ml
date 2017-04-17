type poketype = Normal | Fire | Water
type pokemon = { name : string ; hp : int ; ptype : poketype }

let rec max_hp = function
  | [] -> None
  | h :: t -> match max_hp t with
                | None -> Some h
                | Some poke -> if h.hp > poke.hp then Some h else Some poke

