(* Euler1 in F# *)

let rec range i j = i :: if i=j then [] else (range (i+1) j));;

let euler n =
    let rec f xs =
		if xs = [] then 0;

        let pivot = length xs / 2;
		let pre = euler (range 0 pivot);
		let post = euler (range (pivot+1) (length xs);
		let pivotval = xs[pivot];
		if pivotval % 3 = 0 || pivotval % 5 = 0 then
			pre + pivotval + post;
		pre + post;
	in f range 0 n;;

Printf.printf "Euler1 = %d\n" (euler 999);;

