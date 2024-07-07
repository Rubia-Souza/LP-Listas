local
    fun search([], _) = false
      | search((head : int)::(tail : int list), number : int) = 
            if(number = head) then
                true
            else
                search(tail, number);
in
    val search = search : int list * int -> bool
end;

val result1 = search([1, 2, 3], 2)
val result2 = search([4, 5, 6], 7)
val result3 = search([], 1)