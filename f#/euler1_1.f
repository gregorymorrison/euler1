(* Euler1 in F# *)

let rec range i j = i :: if i>j then [] else (range (i+1) j);;
let sum xs = List.fold (+) 0 xs;;

let myTest = fun x -> if x % 3 = 0 || x % 5 = 0 then true else false;;

let euler n = sum (List.filter myTest (range 0 n));;

Printf.printf "%d\n" (euler 998);;