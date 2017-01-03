as yet unclassified
predictUnordered: aState

	(aState expectingAnd or: [ aState expectingNot ]) 
		ifTrue: [ ^ self forkToHandle: aState ].

	^ super predict: aState

