local
    fun split([]) = ([], [])
      | split(head :: tail) = 
            let
                val splitPair = split(tail)
                val leftSplit = #1 splitPair
                val rightSplit =  #2 splitPair
            in
                if (head mod 2) = 0 then
                    (head :: leftSplit, rightSplit)
                else
                    (leftSplit, head :: rightSplit)
            end;
in
    val split = split : int list -> int list * int list
end;

val split1 = split([1, 2, 3, 4, 5, 6])
val split2 = split([0, 0, 0, 0, 0, 0])
val split3 = split([~1, 0, 2, ~3, 10, 7000])
val split4 = split([])