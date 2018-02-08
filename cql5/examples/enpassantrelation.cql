; Find games where there are two identical positions except that
; enpassant is legal in one, but not legal in the other.
; The line:
; not move previous from a-h7 to horizontal 1 ($capturingpawn p)
; is equivalent to:
;   not
;      {move previous
;         from a-h7
;         to
;          { horizontal 1 ($capturingpawn p)
;          }
;       }

; This asks: was the previous move FROM a square
; on the 7th rank TO a square on which is NOW both (1) a black
; pawn, and (2) a distance 1 away horizontally from the square
; $capturingpawn
; This is because
;   horizontal 1 ($capturingpawn p)
; is the set of squares on which there is a black pawn that is a
; distance 1 away horizontally from $capturingpawn
  

cql(input heijden.pgn variations )
flipcolor
   wtm
   move enpassant
   relation wtm 
     not move previous
              from a-h7
              to p on horizontal 1 Pa-h5
     (mismatch 0)
 

  
  


	

