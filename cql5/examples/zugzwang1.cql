; This simple example just illustrates how to find a zugzwang: the same position occurs with black to move in the
; mainline, but white to move in the variation, in a win study

cql(input heijden.pgn result 1-0 variations)
mainline btm
relation wtm variation
 (mismatch 0)
 
