local
    fun copyList([]) = []
      | copyList(head::tail) = 
            head :: copyList(tail)
in
    val copyList = copyList : int list -> int list
end;

val copy1 = copyList([1, 2, 3])
val copy2 = copyList([7, 12])
val copy3 = copyList([])