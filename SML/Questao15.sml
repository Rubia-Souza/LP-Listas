local
    fun split([]) = ([], [])
      | split([a]) = ([a], [])
      | split([a, b]) = ([a], [b])
      | split(a :: b :: tail) = 
            let
                val splitedTail = split(tail)
                val leftList = #1 splitedTail
                val rightList = #2 splitedTail
            in
                (a :: leftList, b :: rightList)
            end;
in
    val split = split : int list -> int list * int list
end;

val result1 = split([])
val result2 = split([1])
val result3 = split([1, 2])
val result4 = split([1, 2, 3, 4])
val result5 = split([2, 4, 6, 8, 12])
