(* Euler1 in F# *)

let rec range i j = i :: if i=j then [] else (range (i+1) j);;

let myTest = fun x -> x % 3 = 0 || x % 5 = 0;;

let sum = List.fold (+) 0;;

let euler n = range 0 n |> List.filter myTest |> sum;;

[<EntryPoint>]
let main argv =
    printfn "Euler1 = %d" (euler 999)
    0
