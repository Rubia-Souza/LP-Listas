(* Escreva uma função que recebe um inteiro n e cria uma lista com os n! primeiros pares *)

local 
    fun fatorial(0) = 1
      | fatorial(n) = n * fatorial(n - 1)
in
    val fatorial = fatorial : int -> int
end;

local
    fun listarFatoriaisPares(0) = []
      | listarFatoriaisPares(n) = 
            fatorial(2 * n) :: listarFatoriaisPares(n - 1)
in
    val listarFatoriaisPares = listarFatoriaisPares : int -> int list
end;

val result1 = listarFatoriaisPares(0)
val result2 = listarFatoriaisPares(1)
val result3 = listarFatoriaisPares(3)
