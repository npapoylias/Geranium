converting
asGraph

	^ (self sequence  collect: [ :item | item asGraph add: self hash -> ',' -> item hash; yourself ]) deepFlatten asOrderedCollection