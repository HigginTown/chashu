; Find games where one side wins,
; but is down at least a queen's worth of material
; for at least 5 consecutive moves,
; sorted by the length of time he was down the material

cql(input heijden.pgn)

flipcolor
 {result 1-0
  not previous(any powerdifference 9 100 (a A))
  sort "Number of consecutive ply winner is down at least 9"
     next 5 1000
       ({powerdifference 9 100 (a A)}+)
 }
		       

