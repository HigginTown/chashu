; Find games with at least 5 consecutive checks,
; sorted by the number of consecutive checks
; First, we silently
; check that the previous position was not a check,
; otherwise it would have been matched already (not necessary
; but makes the annotations neater)

cql(input heijden.pgn)
not silent previous (any check)
sort "number of consecutive checks"
  next 5 100 (check+)
