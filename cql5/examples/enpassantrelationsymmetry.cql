; Find games where there are two identical positions except that
; enpassant is legal in one, but not legal in the other.
; same as enpassantrelation.cql , but uses symmetry operators instead of
; the 'square' form. Currently slower but might be clearer.

cql(input heijden.pgn variations )
flipcolor shifthorizontal {
   move from Pd5 enpassant
   relation wtm 
     not move previous from a-h7 to p[e5,c5]
     (mismatch 0)
  }

  
  


	

