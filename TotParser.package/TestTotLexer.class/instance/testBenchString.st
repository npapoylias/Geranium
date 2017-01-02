tests
testBenchString

	| oldLex newLex result |
	oldLex := '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"' asRegex.
	newLex := '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"' asTotRegex.
	result := [1 to: 500000 do: [:i | oldLex matchesStreamPrefix: '"hallo world\n"' readStream]] timeToRun asNanoSeconds asFloat /
	[1 to: 500000 do: [:i | newLex matchesStreamPrefix: '"hallo world\n"' readStream]] timeToRun asNanoSeconds asFloat.
	self assert: result > 1.
	Transcript show: result; cr.