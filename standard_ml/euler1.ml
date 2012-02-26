(* Euler1 in Standard ML *) 

local
    fun f 1 acc = acc
      | f i acc = f (i-1) (if i mod 3 = 0 orelse i mod 5 = 0
                            then acc + i
                            else acc)
in
    fun euler1 size = f size 0
end; 

print (Int.toString( euler1 999 ) ^ "\n");