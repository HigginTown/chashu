; delayed white clearance:
;  (1) White moves a piece, the "vacater" to an empty square.
;  (2) Black immediately captures that piece
;  (3) Later another white piece, the exploiter, crosses the square
;      that the vacater had vacated by moving. But the exploiter
;      did not move between (1) and (3).
; The output is sorted by the length of the delay between (2) and (3)
; Note that the reported length by sort is actually 4 positions LONGER
; than the delay between (2) and (3), due to the other positions in the
; sequence.

cql(input heijden.pgn)
wtm
piece $vacater in [RBNQ]
 piece $exploiter in [RBQ]
   attack ($exploiter $vacater)
   sort "theme length"
     next 10 1000
      (move from $vacater to .
       move from a to $vacater
       {not move from $exploiter}+
       move from $exploiter
       ray (origin $exploiter
            origin $vacater
	    $exploiter))
      
