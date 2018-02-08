; Two positions differ only in that in one castling is allowed
; and in the other it is not allowed

cql(input heijden.pgn variations )
 flipcolor
 { 
  Ke1 not check wtm
   square $rooksquare in R[h1,a1]
    {ray  ($rooksquare K)
     attack 0 (a between ($rooksquare K))
     previous* 0 [a.] on $rooksquare or e1
     relation
        wtm Ke1 R on $rooksquare
        previous* [a.] on $rooksquare or e1 
        (mismatch 0)
   }
  }
  
  


	

