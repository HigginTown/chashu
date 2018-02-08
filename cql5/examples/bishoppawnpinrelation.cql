; In the mainline, a Black bishop attacks the White King, but White
; interposes a pawn.
; In the variation, the pawn is unable to interpose - either it is
; missing or it has moved.
; All the other pieces apart from the pawn haven't moved.

cql(input heijden.pgn variations)
wtm mainline
piece $bishop in b
 ray attack ($bishop K)
 piece $pawn in P
  move mainline from $pawn to .
  relation
    variation
    ray attack ($bishop K)
    not
     between ($bishop K)
     on up 1
	  P
	  or . on up 1 Pa-h2
     (sourcesquares not $pawn
      targetsquares not $pawn
      mismatch 0)
    
    
 
