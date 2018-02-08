;; positions where in the variations black moves to pin a P by a q
;; but in the mainline black cannot do that because the K and only the K has moved.
;; the source is the variations and the target is the mainline in the relation as this was
;; more efficient {since it is rarer to have a ray than not to have a ray}
;; The lcamax 4 specification is used to guarantee that that variation
;; and the mainline are not too 'nearby': at least one of them must be
;; a distance of at least 4 from their latest common ancestor. This
;; eliminates certain uninteresting expressions of the theme.

cql( input heijden.pgn variations)
  btm variation move from q 
  square $pinningsquare in any
    move from q to $pinningsquare
    square $pinnedpawn in P
      ray (K $pinnedpawn $pinningsquare)
      relation
        mainline btm
	P on $pinnedpawn
	not ray (K $pinnedpawn $pinningsquare)
	(sourcesquares K mismatch 1)
	(sourcesquares not K mismatch 1)
        (lcamax 4 1000)

 
 
