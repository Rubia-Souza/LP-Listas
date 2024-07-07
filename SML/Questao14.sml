local
    fun allTrue([]) = true
      | allTrue(head::tail) = 
            if head then
                allTrue(tail)
            else
                false
in
    val allTrue = allTrue : bool list -> bool
end;

val result1 = allTrue([true])
val result2 = allTrue([false])
val result3 = allTrue([true, true, true])
val result4 = allTrue([true, false, true])
val result5 = allTrue([])
