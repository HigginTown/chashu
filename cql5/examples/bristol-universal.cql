; Find all Bristols orthogonal or diagonal.
; Here a front line piece ($front)
; moves to a destination.
; Later, along the same line, a back line piece ($front) follows the
; path of $front, crossing the same squares it does, and landing
; just behind it.
; 
; The results are sorted by the length of the move
; by $back (which must traverse at least 3 squares to be
; included).

cql(input heijden.pgn)
; Step 1: choose our front piece and our back piece
 piece $front in [QRB]
 piece $back in [QRB]

; Step 2: start the maneuver, which will check four positions

 next(

; Position (1) the $front moves.

     move from $front

; Position (2) verify, that after $front moves it hasn't given check
; since those are unthematic

     not check

; Position(s) (3) we just let the $front sit where it is not moving, for any
;    number of moves, giving $back time to maneuver into position

     {not move from $front} *

; Position (4) we are ready for the thematic position. We check 3 things about it:

; (4a) There must be a ray between $back and $front, with all the
; squares between the current position of $front
; and the original position of $front on that ray.

     {ray attack ($back
                  between (origin $front
		           $front)
		  $front)

; (4b) Now we check that $back moves along the ray, to within 1 square of $front

      move from $back to anydirection 1 $front		  

; (4c) Finally, we sort the result by the distance between $back and $front.
; This is done by counting the squares between them

      sort "distance"
        countsquares 3 7
	  between ($back
	           $front)

     } ; end thematic position
     ) ; end next
