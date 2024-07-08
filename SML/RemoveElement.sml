local
    fun remove([], _) = []
      | remove(head :: tail, target) = 
        if head = target then
            tail
        else
            head :: remove(tail, target)
in
    val remove = remove : int list * int -> int list
end;

val result1 = remove([], 12)
val result2 = remove([1, 2, 3, 4, 5, 6], 4)
val result3 = remove([1, 2, 3, 4, 5, 6], 12)
