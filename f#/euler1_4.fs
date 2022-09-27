(* Euler1 in F# *)

let euler n = Seq.sum(seq{0..3..n}) + Seq.sum(seq{5..20..n}) + Seq.sum(seq{10..25..n})

Printf.printf "Euler1 = %d\n" (euler 999);;

