; This is a very basic search for certain pure stalemates that
; just checks to see that every empty square in the Black King's
; field is attacked exactly once.

cql( input heijden.pgn )
btm stalemate
square all $emptysquare in attack (k .)
   attack 1 (A $emptysquare)

 
