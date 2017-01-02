instance creation
asGraph

	|nodesTo edges triples|
	triples := OrderedCollection new.
	array doWithIndex: [ :row :index | 
		
		nodesTo := (row asSet select: [ :item | (#(nil true false) includes: item) not ]) asOrderedCollection.
		nodesTo do: [:n | 
			edges := OrderedCollection new.
			row doWithIndex: [ :column :i | column = n ifTrue: [edges add: (Character value: i-1)]].
			triples add: ( ('n' , index asString) -> (edges size = 1 ifTrue: [ edges first ] ifFalse: [  edges asArray]) -> ('n' , n asString))  ]
		].
		 
	^ triples

	