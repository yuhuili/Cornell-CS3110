type 'a tree = 
| Leaf 
| Node of 'a * 'a tree * 'a tree

let d = 
  Node((2,"two"), 
    Node((1,"one"),Leaf,Leaf),
    Node((3,"three"),Leaf,Leaf)
  )

let valid_bst = d
let invalid_bst =
  Node((2,"two"),
    Node((3,"three"),Leaf,Leaf),
    Leaf
  )

let rec lookup key = function
  | Leaf -> None
  | Node((v,k), l, r) ->
    if v = key then Some k
    else if key < v then lookup key l
    else lookup key r

let rec insert k v = function
  | Leaf -> Node((k,v), Leaf, Leaf)
  | Node((k',v'), l, r) ->
    if k = k' then Node((k,v'), l, r)
    else if k < k' then Node((k',v'), (insert k v l), r)
    else Node((k',v'), l, (insert k v r))

let is_bst tree =
  let rec process lmax rmax = function
    | Leaf -> true
    | Node((k,_), l, r) ->
      if (k > rmax) || (k < lmax) then false
      else (process lmax (k-1) l) && (process (k+1) rmax r)
  in process min_int max_int tree
