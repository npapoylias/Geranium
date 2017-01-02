example
example3

	|result|
	result := (TotLexer new parse: '"(a|b)*"') asNFA.
	^ ((TotGraph new with: result asGraph) viewWithLayoutCoefficient: 3) view 