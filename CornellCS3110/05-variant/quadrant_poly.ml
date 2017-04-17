let sign (x:int) =
  if x > 0 then `Pos else if x < 0 then `Neg else `Zero

let quadrant = fun (x,y) ->
  match (sign x, sign y) with
    | (`Pos, `Pos) -> Some `I
    | (`Neg, `Pos) -> Some `II
    | (`Neg, `Neg) -> Some `III
    | (`Pos, `Neg) -> Some `IV
    | _ -> None
