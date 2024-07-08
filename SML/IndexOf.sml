local
    fun indexOf([], _) = ~1
      | indexOf(head :: tail, target) = 
            let 
                val indexInTail = indexOf(tail, target)
            in
                if head = target then
                    0
                else if indexInTail = ~1 then
                    ~1
                else
                    1 + indexInTail
            end;
in
    val indexOf = indexOf : int list * int -> int
end;

val result1 = indexOf([], 12)
val result2 = indexOf([1, 2, 3, 12, 4, 5, 2, 1], 12)
val result3 = indexOf([1, 2, 3, 4], 12)
