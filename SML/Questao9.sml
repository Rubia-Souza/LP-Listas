local
    fun pow(0) = 1
      | pow(power) = 2 * pow(power - 1)
in
    val pow = pow : int -> int
end;

val result1 = pow(0)
val result2 = pow(2)
