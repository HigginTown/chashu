; look for rook visiting the four corners
; technically would fail if an underpromoted rook did this.
cql( input heijden.pgn )
initial
 piece $candidate in R
  next* a1 on $candidate
  next* a8 on $candidate
  next* h1 on $candidate
  next* h8 on $candidate

