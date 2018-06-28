accessing
mutate

	|generator|
	generator := [ -1.0 -> 1.0 ] asRangedDistribution.
	self genesToMutate do: [ :ivIndex | 
		|values|
		values := (1 to: 2) collect: [:i | generator next ].
		weightsProfile instVarAt: ivIndex put: values min -> values max
	]