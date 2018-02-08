; Games with positions in which at least 3 non-pawn pieces by one side immured, sorted by the number of such
; pieces

cql(input heijden.pgn)
flipcolor
{wtm not check
 sort "Number of immured pieces"
    square 3 32 $immured in [RNBQ]
     not ray attack (a $immured K)
     attack 0 ($immured [.a])
}    
     
 
