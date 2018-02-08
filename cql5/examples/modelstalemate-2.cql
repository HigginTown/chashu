; model stalemates with at least 6 black pieces, sorted by number of black pieces.
; Same as modelstalemate-1.cql - see that file for additional
; documentation


cql( input heijden.pgn)
btm stalemate
{square all $emptysquare in attack (k .)
   attack 1 (A $emptysquare)
}    

{square all $selfblocker in attack (k a)
     attack 0 (A $selfblocker)
     or ray attack (A $selfblocker k)}

{square all $attacker in [RNBQ]
  attack ($attacker attack (k .))
  or ray attack ($attacker a k)
  or square $shadowedchecker in A
       ray attack ($shadowedchecker $attacker k)
  or p on up 1 $attacker p}

sort "number of black pieces" countsquares 6 32 a

       
	


 
