(*Considerando apenas listas de tamanho iguais -> match nonexhaustive*)

local
    fun sumLists([], []) = []
      | sumLists((headList1::tailList1), (headList2::tailList2)) =
            let
                val sum = headList1 + headList2
            in
                sum :: sumLists(tailList1, tailList2)
            end;
in
    val sumLists = sumLists : int list * int list -> int list
end;

val sum1 = sumLists([1, 2, 3], [1, 2, 3])
val sum2 = sumLists([1, 2, 3], [10, 11, 12])