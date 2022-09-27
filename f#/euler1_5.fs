(* Euler1 in F# *)

let rec range i j = i :: if i=j then [] else (range (i+1) j);;

let myTest x = x % 3 = 0 || x % 5 = 0;;

let sum = List.fold (+) 0;;

let euler n = sum (List.filter myTest (range 0 n));;

Printf.printf "Euler1 = %d\n" (euler 999);;

