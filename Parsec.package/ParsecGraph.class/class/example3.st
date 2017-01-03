example
example3

	|result|
	result := (ParsecLexer new parse: '"(a|b)*"') asNFA.
	^ ((ParsecGraph new with: result asGraph) viewWithLayoutCoefficient: 3) view 