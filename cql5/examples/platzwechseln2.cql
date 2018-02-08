; Platzwechseln where a white and black knight switch places, where they are separated by
; at least 3 squares

cql(input heijden.pgn )
piece $knight1 in N
 piece $knight2 
         in n on vertical 3 7
                   horizontal 3 7
		     $knight1
         next* {$knight1 on origin $knight2
              $knight2 on origin $knight1
             }
















