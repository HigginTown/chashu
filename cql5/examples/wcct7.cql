; Find pairs of positions in win studies
; differing only in that the target is missing at least one white
; piece compared to the target
; This was the study theme of the 7th World Chess Composition Tournament

cql(input heijden.pgn result 1-0)
  relation 
    (tomove match)
    (sourcesquares [a.] mismatch 0) 
    (sourcesquares A targetsquares [aA] mismatch 0)
    (sourcesquares A targetsquares . mismatch 1 64)
