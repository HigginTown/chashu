; This search for pure mate checks both that
; every empty square in the Black King's field is
; guarded at most once, and checks that every
; Black piece in the King's field is not attacked by a White piece,
; unless that piece is also pinned. 

; We say a square is "guarded" if either it is attacked by a White piece
; or if it would be attacked by a White piece if the Black king moved there.
; For example, in the position Ke6 ke8 Ra8, the square f8 is "guarded" but
; not attacked.
; 
; In a true pure mate, the pin should be necessary to the mate, but we
; don't check for that
; Note that the addition of the parentheses around the first
; "square all...attack" clause as compared to puremate-1.cql. This is
; important, otherwise the second square all would be in the scope of the
; first square all.

cql( input heijden.pgn )
mate btm
{square all $empty in attack (k .)
   attack 0 1 (A $empty)
   attack 0 (A $empty) or
   ray 0 attack  (A k $empty)
}

square all $selfblocker in attack (k a)
     attack 0 (A $selfblocker)
     or ray attack (A $selfblocker k)

 
