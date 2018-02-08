; Games with positions in which at least 3 pieces are pinned, sorted by the number of such
; pinned pieces

cql(input heijden.pgn)
flipcolor 
 sort "number of pins"
   ray 3 20 attack (A a k)
 
