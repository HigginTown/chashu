; This search for pure stalemate checks both that
; every empty square in the Black King's field is
; attacked exactly once, and checks that every
; Black piece in the King's field is not attacked by a White piece,
; unless it is pinned. Also see the notes on puremate-2.cql

cql( input heijden.pgn )
btm stalemate
{square all $emptysquare in attack (k .)
   attack 1 (A $emptysquare)
}    
square all $selfblocker in attack (k a)
     attack 0 (A $selfblocker)
     or ray attack (A $selfblocker k)

 
