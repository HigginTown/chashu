; This search for model stalemate checks both that
; every empty square in the Black King's field is
; attacked exactly once, and checks that every
; Black piece in the King's field is not attacked by a White piece,
; unless that piece is also pinned, and also requires that
; every non-pawn, non-King White piece either attack
; an empty square in the Black King's field, or is pinning a black piece,
; or is blocking a white piece that would otherwise be checking the
; Black King, or is blocking the movement of a pawn
; As before, we don't check that the pins are actually necessary for the stalemate.
; This is based on purestalemate-2.cql; see also the comments to puremate-2.cql
; As in the comments to that file, note that both sets of parentheses are required.
; At this time, the output of this file has not been verified.

cql( input heijden.pgn )
btm stalemate
{square all $emptysquare in attack (k .)
   attack 1 (A $emptysquare)
}    

{square all $selfblocker in attack (k a)
     attack 0 (A $selfblocker)
     or ray attack (A $selfblocker k)}

square all $attacker in [RNBQ]
  attack ($attacker attack (k .))
  or ray attack ($attacker a k)
  or square $shadowedchecker in A
       ray attack ($shadowedchecker $attacker k)
  or p on up 1 $attacker
       
	


 
