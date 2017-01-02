example
example5

	|result|
	result := (TotLexer new parse: '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"') asDFA.
	^ ((TotGraph new with: result asGraph) viewWithLayoutCoefficient: 4) view 