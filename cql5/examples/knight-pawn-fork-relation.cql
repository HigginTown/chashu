; In the mainline, white moves a Knight to fork the black King and a
; black pawn on the second rank. In the variation, the fork
; fails because there is a white piece on the forking square
; There are no other differences in the positions than that White piece
; on that square, preventing the fork.

cql(input heijden.pgn variations)
 mainline wtm
 square $fork in move mainline from N to .
   next  (any ; current position
          {mainline
           attacks ($fork k)
           attacks ($fork pa-h2)}
          )
   relation
      variation wtm
      A on $fork
      (sourcesquares not $fork mismatch 0)
