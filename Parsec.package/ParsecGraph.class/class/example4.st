example
example4

	|result|
	result := (ParsecLexer new parse: '"(a|b)*"') asDFA.
	^ ((ParsecGraph new with: result asGraph) viewWithLayoutCoefficient: 4) view 