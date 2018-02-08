; This illustrates how to convert the version bristol1.cql using pieceids and directions instead of shifts
; Note that this version is much faster than the version using shifts

cql(input heijden.pgn )

 move from B
 piece $bishop in B
  next(
         { Q on diagonal 1 $bishop
           move from $bishop}
         btm
         { ray diagonal ($bishop Q)
           move from Q}
         Q on diagonal 1 $bishop
       )

