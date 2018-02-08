; Find games with at least 20 consecutive checks by the same color
; sorted by the number of consecutive checks
; First, we check that the previous position by the same color was not a check,
; otherwise it would have been matched already (not necessary
; but makes the annotations neater)
; Next, we just use "next2" to find 20 or more checks by the same side
; If used "next" instead of "next2" then we would be looking for consecutive
; checks by either side

cql(input heijden.pgn)
not previous2 (any check)
sort "number of consecutive checks"
  next2 20 100 (check+)
