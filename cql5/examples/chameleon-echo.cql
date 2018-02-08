; Chameleon echoes: positions that have an echo by a shifted version,
; with the color of square on which each piece in the source is on
; changing in the target. Output is sorted by the number of
; pieces which must be at least 4. Note: this code runs slowly, so by default only
; game 1 1000 are evaluated (you can use --gamenumber to override this)
; Note that the numberment to npieces must come after the relation, so
; that it is only matched when the relation also matches. Otherwise,
; the sorting will take into account the number of pieces in positions
; that do not match the relation

cql(input heijden.pgn gamenumber 1 1000)

K on lightsquares
relation
   K on darksquares
   (tomove match)
   echoshift (mismatch 0)
sort "Number of pieces" countsquares 4 32 [Aa]
 





