; This search for model mate checks both that
; every empty square in the Black King's field is
; guarded ("controlled", see notes to puremate-1) at most once, and checks that every
; Black piece in the King's field is not attacked by a White piece,
; unless that piece is also pinned, and also requires that
; every non-pawn, non-King White piece either attack the black King,
; or an empty square in its field, or is pinning a black piece, or is interfering
; with a black piece that could otherwise break a check.
; As before, we don't check that the pins are actually necessary for the mate.
; This is based on puremate-2.cql.
; As in the comments to that file, note that both sets of parentheses are required.
; At this time, the output of this file has not been verified.

cql( input heijden.pgn )
mate btm
{square all $empty in attack (k .)
   attack 0 1 (A $empty)
   attack 0 (A $empty) or
   ray 0 attack  (A k $empty)
}

{square all $selfblocker in attack (k a)
     attack 0 (A $selfblocker)
     or ray attack (A $selfblocker k)}

square all $attacker in [RNBQ]
  attack ($attacker k)
  or attack ($attacker attack (k .))
  or ray attack ($attacker a k)
  or square $checker in A
        attack ($checker k)
	square $defender in [rbq]
	  ray attack ($defender
	              $attacker
		      $checker or between($checker k))
	


 
