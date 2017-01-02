converting
asGraph

	
	^ (options collect: [ :option | option asGraph add: self hash -> '|' -> option hash; yourself ]) deepFlatten asOrderedCollection