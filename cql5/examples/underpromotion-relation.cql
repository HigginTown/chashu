; This template can be used to find underpromotion studies
; Pairs of positions differing only in that a single white non-pawn
; piece has changed in the source {in the mainline} and the target {in
; the variation}. Thus, that piece
; must have been promoted to a different piece in a variation.
; The lcasum is the sum of the distances of the source and target to their
; latest common ancestor; the output is sorted by this sum, and a min sum of 10 is required.

cql( input heijden.pgn variations)
mainline 
relation 
  variation
    (tomove match)
    (sourcesquares [RNBQ] targetsquares [RNBQ] mismatch 1)
    (mismatch 1)
    (sort "Sum of distances to the LCA" lcasum 10 1000)

 
 
