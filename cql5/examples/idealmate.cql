; This search for ideal mate is based on modelmate.cql,
; but adds the requirement that every non-King black piece participates, either
; by blocking the King's escape squares or by blocking a black's piece attack on
; a checker or by blocking a black's piece attack on a square between a checker and the black King.
; Once again, note the addition of the parentheses around the square alls.
; However, this might include some non-ideal mates as in modelmate.cql.
; Not yet verified.

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

{square all $attacker in [RNBQ]
  attack ($attacker k)
  or attack ($attacker attack (k .))
  or ray attack ($attacker a k)
  or square $checker in A
        attack ($checker k)
	square $defender in [rbq]
	  ray attack ($defender
	              $attacker
		      $checker or between($checker k))}

square all $friend in [rnbpqp]
  attack (k $friend)
  or square $checker in A
    attack ($checker k)
     ray attack (a
                 $friend
		 $checker or
		 between ($checker k))
		 

	


 
