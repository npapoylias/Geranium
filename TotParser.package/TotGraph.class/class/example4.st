example
example4

	|result|
	result := (TotLexer new parse: '"(a|b)*"') asDFA.
	^ ((TotGraph new with: result asGraph) viewWithLayoutCoefficient: 4) view 