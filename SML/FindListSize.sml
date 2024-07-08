local
    fun size([]) = 0
      | size(head :: tail) = 1 + size(tail)
in
    val size = size : int list -> int
end;

val result1 = size([])
val result2 = size([1])
val result3 = size([1, 2, 3])
