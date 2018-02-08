; This file finds games with an excelsior where the promoted piece returns to its original square
cql(input heijden.pgn )

initial
 piece $pawn in flipcolor Pa-h2
   next* move from $pawn to origin $pawn
   
  
