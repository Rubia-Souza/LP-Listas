(* Escreva uma função que recebe um inteiro n e cria uma lista com os n primeiros quadrados perfeitos. *)

local
    fun listarQuadradosPerfeitos(0) = []
      | listarQuadradosPerfeitos(n) = 
            (n * n) :: listarQuadradosPerfeitos(n - 1)
        
in
    val listarQuadradosPerfeitos = listarQuadradosPerfeitos : int -> int list
end;

val result1 = listarQuadradosPerfeitos(0)
val result2 = listarQuadradosPerfeitos(1)
val result3 = listarQuadradosPerfeitos(3)
