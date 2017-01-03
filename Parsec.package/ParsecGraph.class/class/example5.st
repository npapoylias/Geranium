example
example5

	|result|
	result := (ParsecLexer new parse: '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"') asDFA.
	^ ((ParsecGraph new with: result asGraph) viewWithLayoutCoefficient: 4) view 