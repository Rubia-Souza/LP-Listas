local
    fun pow(_, 0) = 1
      | pow(number, power) = number * pow(number, power - 1)
in
    val pow = pow : int * int -> int
end;

val result1 = pow(0, 10)
val result2 = pow(2, 3)
val result3 = pow(3, 2)
val result4 = pow(~2, 3)