; This CQL file illustrates searching for certain game-level information.
; It seeks games at the site "Skopje" in any event with the string "Open"
; It only looks for games that Ivanchuk won against a player rated from 2000 to 2800.
; It sorts the result by opponent elo and year.
; 
cql (input test.pgn site "Skopje" event "Open" gamenumber 1 50000);
initial
flipcolor
  {player  white "Ivanchuk"
   sort "Opponent ELO" elo black 2000 2800
   result 1-0}
   sort "Year" year 1900 2016

