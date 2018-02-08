; This CQL file illustrates searching for certain game-level information.
; It seeks games in any event with the string "1.p", which denotes a 
; 1st prize in the Heijden database.
; It sorts the result by the length of the study

cql (input heijden.pgn event "1.p")
terminal
sort "Length of game" movenumber 0 1000

