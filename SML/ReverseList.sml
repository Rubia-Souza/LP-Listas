local
    fun reverse([]) = []
      | reverse(head :: tail) =
            reverse(tail) @ [head]
in
    val reverse = reverse : int list -> int list
end;

val result1 = reverse([1, 2, 3, 4])
