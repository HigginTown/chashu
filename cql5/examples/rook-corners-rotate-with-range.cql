; look for rook visiting the four corners
; This uses rotate with a range to find games where a rook visits all corners

cql( input heijden.pgn )
initial
 piece $rook in R
  rotate90 4
    next* $rook on a1




