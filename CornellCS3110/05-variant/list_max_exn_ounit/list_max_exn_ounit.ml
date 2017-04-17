open OUnit2
open Listfunc

let tests = "list max" >::: [
  "empty"      >:: (fun _ -> assert_raises (Failure "List is empty") (fun () -> list_max []));
  "nonempty"   >:: (fun _ -> assert_equal 3 (list_max [1;2;3]));
]

let _ = run_test_tt_main tests
