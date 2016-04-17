(* Euler1 in F# *)

let euler x =
    let rec aux i n =
        if i = 0 then n else
            aux (i-1)  (if i % 3 = 0 || i % 5 = 0 then n + i else n)
    in aux x 0

printfn "%i" (euler 999)