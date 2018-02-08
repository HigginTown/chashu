; Find games with at least 5 discovered checks, sorted by the number
; of discovered checks. This version uses the fact that "move previous" is
; the square that was last moved to
; Hence, "not move previous" is the squares that were not just moved to, and
; "A on not move previous" is the squares on which there is a white piece
; on a square that was just not moved to.
; The "attack" filter asks whether any of these white pieces - that have not just been
; moved to - are attacking the King. If so, it must be from a discovered check.
; The "not initial" is important on the first move, otherwise every first-move check
; would be considered discovered. The "flipcolor" just lets black give discovered checks
; against white.

cql(input heijden.pgn 
    sort matchcount 5 100
    )
not initial
flipcolor attack (A on not move previous k)

  
	     
	    
	    
			    
