; This file finds games at least one White excelsior.
; See excelsior-multiple.cql for games with multiple excelsiors of either color
; It illustrates that the ID of a piece does not change after promotion

cql(input heijden.pgn )

initial
piece $pawn in Pa-h2
  next* move from $pawn promote A
  
