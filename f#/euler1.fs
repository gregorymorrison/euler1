(* Euler1 in F# *)

let euler x =
    let rec f i n =
        match i with
            | 0 -> n
            | i when i % 3 = 0 || i % 5 = 0 -> f (i-1) (n+i)
            | _ -> f (i-1) n
    in f x 0

printfn "Euler1 = %i" (euler 999)

