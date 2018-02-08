; Pairs of positions with the source in the mainline and the target
; in the variations. They differ only in that
; a single black piece has moved. They are reached by a path from
; their latest common ancestor that has at least 15 consecutive
; identical moves. (A "Warning: truncating long comment" warning when running
; this file can be ignored).
; The output is sorted by the number of consecutive moves

cql(input h.pgn variations)
 mainline
 relation
  variation
    (tomove match)
    (sourcesquares a targetsquares . mismatch 1)
    (sourcesquares . targetsquares a mismatch 1)
    (mismatch 2)
    (sort "number of common consecutive moves" lcasubstring 15 1000)


 
 
