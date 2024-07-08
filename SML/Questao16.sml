fun sumLists([], []) = []
  | sumLists(head1 :: tail1, head2 :: tail2) = 
        (head1 + head2) :: sumLists(tail1, tail2)

val result1 = sumLists([1, 2, 3], [4, 5, 6])
val result2 = sumLists([], [])
