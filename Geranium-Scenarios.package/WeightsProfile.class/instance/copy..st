accessing
copy: anotherWeightsProfile

	self class instVarNames do: [ :ivName | 
		self instVarNamed: ivName put: (anotherWeightsProfile instVarNamed: ivName)	
	]