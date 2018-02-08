; Stalemates where difference in power between the stalemated side and the stalemating side is
; at least 10, sorted by that difference

cql(input heijden.pgn)

 flipcolor
 { wtm
   stalemate
   sort "difference in power between stalemated and stalemating sides"
     powerdifference 10 1000 (A a)
 }




