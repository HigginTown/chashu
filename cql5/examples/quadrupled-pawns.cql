; Find games with quadrupled pawns. This is a direct translation of code
; from the old version using 'flip' and 'shift' .

cql(input heijden.pgn)
 flipcolor
   shifthorizontal
     countsquares 4 P[b2-7]

