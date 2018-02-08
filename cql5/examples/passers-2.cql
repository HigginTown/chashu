; Positions with at least 5 passed pawns, sorted by number of passed
; pawns in the game. This version uses 'attack' to check for pawns on
; adjacent files, rather than directions

cql (input heijden.pgn)
 
sort "number of white passers"
  square 5 8 $pawn in P
    attack 0 (p up 0 7 $pawn)
    not [Pp] on up $pawn


 
 
