example
example2

	|result|
	result := (TotLexer new parse: '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"').
	^ (TotGraph new with: result asGraph) viewWithLayoutCoefficient: 2