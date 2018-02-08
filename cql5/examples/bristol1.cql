; Queen - Bishop bristols. This is a direct translation of the old
; version's bristol.cql

cql(input heijden.pgn )
next(
  shift {move from Bd4
         Q[c3,e3,e5,c5]}
  any 
  {move from Q
   ray diagonal (B Q)}
  shift {Bd4 Q[c3,e4,e5,c5]}
  )

