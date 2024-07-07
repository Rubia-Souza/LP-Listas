local
    fun max([]) = 0
      | max(head::tail) = 
            let
                val maxValueFromTail = max(tail)
            in
                if head > maxValueFromTail then
                    head
                else
                    maxValueFromTail
            end;
in
    val max = max : int list -> int
end;

val result1 = max([1, 2, 3, 10, 4, 5])
val result2 = max([12, 2, 3, 10, 4, 5])
val result3 = max([1, 2, 3, 10, 4, 11])
val result4 = max([0, 0, 0, 0, 0, 0])