; this illustrates how to find positions that are "white tries".
; These are positions that are
; in a variation, but they arise from White moving from the mainline
; The "silent" is necessary, otherwise way too may comments are printed

cql(input heijden.pgn variations gamenumber 1 1000)
silent previous (variation+ {mainline wtm})



