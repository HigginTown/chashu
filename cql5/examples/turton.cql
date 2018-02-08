; This example code finds Turtons (including Lloyd-Turton and Brunner-Turton).
; 
; At the start of the Turton, there are two line pieces (i.e. Q, R or B).
; Each attack a key square, called the critical square.
; 
; We call these two line pieces Front and Side, because they move in different
; directions and because Front will move first.
; 
; The idea of the Turton is that instead of the Side piece just moving immediately
; onto the critical square - which would seem natural, as that is where it wants to
; go, first the Front piece crosses the critical square. Only
; after the crossing does the Side piece then move onto the critical square (from
; a different direction).
; 
; By doing so, the Front piece and the Side piece from a battery, one that has the
; exact opposite orientation to the battery that would be formed had the Side piece
; moved first, before the Front piece crossed.
; 
; Once the battery is formed, it fires: the Side piece, which is now on the
; critical square, moves in a direction OPPOSITE to the direction that the Front piece
; originally moved. By doing so, it is still supported by the Front piece - this
; support is crucial to the theme.
; 
; In the code below, we call the Side piece "$side", we call the Front piece
; "$front" and we call the critical square "$criticalsquare".
; 
; We call attention to two aspects of the code that may be confusing.
; 
; First,
;   move from $front
; is represents the square that $front moves to. So
; 
;   between ($front
;            move from $front)
; is the squares between $front and its destination. These are the squares
; to which $criticalsquare is successively bound in order to see if the
; Turton works for that critical square.
; 
; Second, the lines:
;    {not move from $front or $side}*
; means "0 or move moves by some piece other than $front or $side". That is
; because
;   $front or $side
; represents the two squares these pieces are on. The "*" is a wildcard that means
; "repeat 0 or more times"

cql (pgn ../KingBase2018-pgn/KingBase2018-A00-A39.pgn)
 piece $front in [QRB]
    move from $front to . 
    piece $side in [QRB]
    not $front on $side
    square $criticalsquare in between ($front
                                       move from $front)
     attack ($side $criticalsquare)
     next ( move from $front
            not ray ($front $criticalsquare $side)
            {not move from $front or $side}*
	    move from $side to $criticalsquare
            {not move from $front or $side}*
	    move from $side
	    ray ($front $criticalsquare $side)
          )

 
