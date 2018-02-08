; Find all queen staircases of either color, in any direction, of length at least 10
; sort the output by the length of the staircase

cql(input heijden.pgn)

; The "flip" makes the staircase go in any direction
; The "flipcolor" looks for both black and white queen staircases

flipcolor flip

 {
; The following "not previous2" line is designed to improve the readability of the output only.
; The "previous2" asks if we are in the middle of a staircase already, and if so, prevents a match
; This way we don't get a bunch of comments in the output for smaller staircases we already are in the middle of,

  not  previous2
    (any
     move from Q to right 1 Q) 


; Now for the actual work. The "sort "staircase size""
; just sorts the following "next2" filter, and
; in the output it makes sure that the annotations say the words "staircase size"
; The next2 limits the number matched positions following the current position, of the same side to
; move as the current position (hence "next2" instead of "next").
; move from Q to up 1 Q means the Queen moves one square up; similarly for right
; so the expression with a "+" simply looks for one or more repetitions of a white queen move
; one square up, then on square right.
; Following that, we optionally (hence the "?") can end the staircase with a move one square right

  sort "staircase size"
   next2 5 100 
   ((move from Q to up 1 Q
     move from Q to right 1 Q)+
    {move from Q to up 1 Q}? 
   ) ; end the sort
 }  ; end the flip

