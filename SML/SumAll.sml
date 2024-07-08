local
    fun sumAll([]) = 0
      | sumAll(head :: tail) = head + sumAll(tail)
in
    val sumAll = sumAll : int list -> int
end;

val result1 = sumAll([])
val result2 = sumAll([1, 2, 3, 4, 5, 6])
