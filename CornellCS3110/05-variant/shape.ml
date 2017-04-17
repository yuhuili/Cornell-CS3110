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

let rec shape t1 t2 =
  match (t1, t2) with
    | (Leaf, Leaf) -> true
    | (Node(_,l,r), Node(_,z,y)) -> (shape l z) && (shape r y)
    | _ -> false
