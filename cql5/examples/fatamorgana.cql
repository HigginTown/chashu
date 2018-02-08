; The Fata Morgana theme : btm position occurs 
;  at least 10 ply later than the original wtm position,
; sorted by the length of the difference

cql(input heijden.pgn result 1-0)
not event "@"
wtm
relation
 btm
  (mismatch 0)
  (sort "Fata Morgana theme length" lcatarget 10 1000)



 
 
