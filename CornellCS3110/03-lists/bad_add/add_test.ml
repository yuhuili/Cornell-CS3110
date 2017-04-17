open OUnit2
open Add

let tests = "test add" >::: [
  "1+2" >:: (fun _ -> assert_equal 3 (add 1 2));
  "7+0" >:: (fun _ -> assert_equal 7 (add 7 0));
]

let _ = run_test_tt_main tests
