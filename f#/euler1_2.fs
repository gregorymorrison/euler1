(* Euler1 in F# *)

let rec range i j = i :: if i=j then [] else (range (i+j) j);;

let myMap = (List.map (fun x -> x) : (int, int));;

let myFilter = List.filter (fun x -> x % 3 = 0 || x % 5 = 0);;

let myFold = List.fold (+) 0;;

let euler n = range 0 n |> myFilter |> myFold;;

Printf.printf "Euler1 = %d\n" (euler 18);;

