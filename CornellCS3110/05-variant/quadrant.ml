type quad = I | II | III | IV
type sign = Neg | Zero | Pos

let sign (x:int) :sign =
  if x > 0 then Pos else if x < 0 then Neg else Zero

let quadrant : int*int -> quad option = fun (x,y) ->
  match (sign x, sign y) with
    | (Pos, Pos) -> Some I
    | (Neg, Pos) -> Some II
    | (Neg, Neg) -> Some III
    | (Pos, Neg) -> Some IV
    | _ -> None
