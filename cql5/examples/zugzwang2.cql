; This example is based on zugzwang1.cql,
; the same position occurs with black to move in the
; mainline, but white to move in the variation, in a win study. However, this also requires that the
; paths from the latest common ancestor to the two positions have a sequence of at least 5 moves in common
; the output is sorted by the length of the common sequence of moves

cql(input heijden.pgn result 1-0 variations)
mainline btm
relation wtm variation
 (mismatch 0)
 (sort "Common consecutive move sequence" lcasubstring 5 1000)
 
