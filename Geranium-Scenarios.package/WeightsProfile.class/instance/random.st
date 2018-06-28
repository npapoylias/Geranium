accessing
random

	|generator|
	generator := [ -1.0 -> 1.0 ] asRangedDistribution.
	self class instVarNames do: [ :ivName | 
		|values|
		values := (1 to: 2) collect: [:i | generator next ].
		self instVarNamed: ivName put: values min -> values max
	]