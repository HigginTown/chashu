; Find games where some square has been visited at least 15 times, and sort the results
; by the number of times visited.

cql(input heijden.pgn)
initial
square $visitedsquare in any
 sort "max number of visits to a single square"
   next* 15 1000
      move to $visitedsquare
      

