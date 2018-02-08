; This file finds games with multiple mainline excelsiors
; It illustrates that the ID of a piece does not change after promotion
; It sorts the result by the number of such excelsiors

cql(input heijden.pgn)

initial
sort "Number of excelsiors"
   piece 2 16 $pawn in flipcolor Pa-h2
     next* move from $pawn promote [Aa]
