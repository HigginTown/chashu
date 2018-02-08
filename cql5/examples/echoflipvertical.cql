; The same position occurs in the source and the target flipped about
; the vertical axis. Output is sorted by number of pieces,
; then the number of white pieces, then the number of black pieces
; The "lightsquares on K" form is just used to make sure each source is not
; also a target
; this version only looks at games 1 to 10000 for time reasons

cql(input heijden.pgn
    gamenumber 1 10000
    variations)

lightsquares on K
relation
   (tomove match)
   echoflipvertical (mismatch 0)
sort "All pieces"  countsquares 4 32 [Aa]
sort "White pieces"  countsquares 2 32 A
sort "Black pieces"  countsquares 2 32 a

 





