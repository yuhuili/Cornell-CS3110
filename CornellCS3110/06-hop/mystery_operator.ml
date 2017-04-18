let double x = 2*x
let square x = x*x
let twice f x = f (f x)
let quad = twice double
let fourth = twice square

let ($) f x = f x
let (@@) f g x = x |> g |> f
