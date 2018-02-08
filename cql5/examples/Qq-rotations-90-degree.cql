; Q and q are on the same file or rank, separated by a single square with a piece on it. The configuration
; recurs in all 4 possible orientations. See Qq-rotations.cql for a more general version that considers
; 45 degree rotations

cql(input heijden.pgn variations)
initial
 rotate90 4
    next* shift {Qd4 [Aa]e4 qf4}

 
