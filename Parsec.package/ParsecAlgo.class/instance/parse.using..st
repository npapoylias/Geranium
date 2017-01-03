parsing
parse: aString using: aGrammar

	input := aString readStream.
	grammar := aGrammar.
	dummyRule grammar: grammar.
	charts currentAdd: 
		(ParsecState on: dummyRule alternative: 1 from: 0 to: 0 dot: 0).
	(grammar at: #ignore) regExpr matchesStreamPrefix: input. "always at the start of next token"
	
	readingPosition := input position.
	
	"proceed returns true while we have more charts to loop through"
	[charts currentDo: 
		[:state | self totAlgoOn: state]; proceed] whileTrue.

	^ charts
	 