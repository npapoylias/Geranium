tests
testBenchDFA

	| oldLex newLex result |
	oldLex := '[0-9]+' asTotRegex.
	newLex := '[0-9]+' asTotRegex asDFA.
	result := [1 to: 500000 do: [:i | oldLex matchesStreamPrefix: '324525 sfsdf' readStream]] timeToRun asNanoSeconds asFloat /
	[1 to: 500000 do: [:i | newLex matchesStreamPrefix: '324525 sfsdf' readStream]] timeToRun asNanoSeconds asFloat.
	"self assert: result > 1."
	Transcript show: result; cr.