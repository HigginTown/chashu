; rook visiting the four corners, without annotating the corners.
; see rook-corners-2.cql for more information

cql( input heijden.pgn )
initial
 piece $rook in R
  square all $corner in rotate90 a1
   silent next* $rook on $corner





