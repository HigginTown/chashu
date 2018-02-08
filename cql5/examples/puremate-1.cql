; This is a very basic search for certain pure mates that
; just checks to see that every empty square in the Black King's
; field is attacked exactly once.

cql( input heijden.pgn )
mate btm
square all $empty in attack (k .)
   attack 1 (A $empty)
   
 
