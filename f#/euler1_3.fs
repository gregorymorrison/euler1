(* Euler1 in F# *)

let euler n = Seq.sum(seq{0..3..n}) + Seq.sum(seq{0..5..n}) - Seq.sum(seq{0..15..n})

Printf.printf "Euler1 = %d\n" (euler 999);;

