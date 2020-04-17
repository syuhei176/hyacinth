(* helper functions of ethereum 2.0 spec *)

(* Return the largest integer x such that x**2 <= n. *)
let integer_squareroot n =
  let rec integer_squareroot_loop x y =
    if y >= x then x
    else integer_squareroot_loop y (floor ((y +. (float_of_int n) /. y) /. 2.))
  in
  integer_squareroot_loop (float_of_int n) (floor ((float_of_int (n + 1)) /. 2.))

let () =
  print_string (string_of_float (integer_squareroot 10));;
