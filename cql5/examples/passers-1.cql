; Find positions with at least 5 White passed pawns.
; this version uses direction translation to check for pawns on adjacent files.
; The version in passers-2.cql uses 'attack' for the same purpose

cql(input heijden.pgn )

 square 5 8 $pawn in P
  not p on up horizontal 1 $pawn
  not [Pp] on up $pawn


 
 
