; This file is based on the file excelsior-multiple.cql . 
; It modifies that file by using the comment filter
; to output the actual squares on which the excelsior was found

cql(input heijden.pgn)
initial
comment "Excelsiors are"
sort "Number of excelsiors"
  piece 2 16 $pawn in flipcolor Pa-h2
   next* move from $pawn promote [Aa]
   comment $pawn
