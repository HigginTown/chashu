; Wurzburg-Plachutta. 
;
; $pieceA and $pieceB each move to a critical square.
; each also has a unique square it must have access to for defense
; each, in separate variations, occupies the critical square, creating
; a Holzhausen interference which white exploits, so that
; each interferes with the other's ability
; to access the square it needs.

cql(input heijden.pgn variations result 1-0 )
mainline
piece $pieceA in [qrb]
piece $pieceB in [qrb]
not $pieceA on $pieceB          ;exclude identity

square $criticalsquare in attack($pieceA .) on attack ($pieceB .)
        ; the critical square is attacked by both thematic pieces

   not $criticalsquare on between ($pieceA $pieceB) 
        ; exclude unthematic cases where pieces are on the same line
   btm
   next ( btm  ; the move to the critical square by pieceA
          {wtm $pieceA on $criticalsquare}
          {btm
 	   ray ($pieceB
	        $pieceA
		move from $pieceA) ;pieceA hides its target from pieceB
          }
        )
   next ( btm ; pieceB move to the critical square
          {wtm $pieceB on $criticalsquare}
          {btm
 	   ray ($pieceA
	        $pieceB
		move from $pieceB)
          }
        )
     	   
       
