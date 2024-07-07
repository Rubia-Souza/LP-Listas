fun cube(number : real) : real =
    let
        val cubeNumber : real = number * number * number
    in
        cubeNumber
    end;

val result1 : real = cube(3.3)

val result2 : real = cube(0.0)

val result3 : real = cube(1.0)

val result4 : real = cube(~2.0)
