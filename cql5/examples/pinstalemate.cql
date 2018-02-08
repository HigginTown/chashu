; Find stalemates where at least two pieces are pinned.
; Sort by the number of pins in descending order, and the total power of the
; pieces in ascending order

cql(input heijden.pgn)
flipcolor{
 btm
 stalemate
 sort "number of pins" ray 2 8 attack (A a k)
 sort min "material" power 1 1000 [Aa]
 }
 
