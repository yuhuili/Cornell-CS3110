type date = { month:int; day:int }

module Date = struct
  type t = date
  let compare x y =
    if (x.month = y.month) && (x.day = y.day) then 0
    else if (x.month > y.month) || (x.month = y.month && x.day > y.day) then 1
    else (-1)
end

module DateMap = Map.Make(Date)

type calendar = string DateMap.t

let print_calendar cal =
  DateMap.iter (fun k v -> Printf.printf "%i/%i: %s\n" k.month k.day v) cal;;

let d = DateMap.add {month=10;day=13} "CS 3110 Fall 2016 Prelim 1" DateMap.empty;;
