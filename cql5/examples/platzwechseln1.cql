cql( input heijden.pgn )
 piece $knight1 in N
  piece $knight2 in N
   not $knight1 on $knight2
         next* {{$knight1 on origin $knight2}
	          {$knight2 on origin $knight1}}

