; look for rook visiting the four corners
; This is a slightly more compact version of rook-corners-1.cql
cql( input heijden.pgn )
initial
 piece $rook in R
  square all $corner in rotate90 a1
   next* $rook on $corner





