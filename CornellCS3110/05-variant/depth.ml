type 'a tree = 
| Leaf 
| Node of 'a * 'a tree * 'a tree

let t = 
  Node(4,
    Node(2,
      Node(1,Leaf,Leaf),
      Node(3,Leaf,Leaf)
    ),
    Node(5,
      Node(1,Leaf,Leaf),
      Node(3,Leaf,Leaf)
    )
  )


let rec size = function
  | Leaf -> 0
  | Node(_,l,r) -> 1 + size l + size r

let rec depth = function
  | Leaf -> 0
  | Node(_,l,r) -> 1 + (max (depth l) (depth r))
