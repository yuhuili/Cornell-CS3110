let last ls =
  List.hd (List.rev ls)

let any_zeros ls =
  List.exists (fun x -> x=0) ls
