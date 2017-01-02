as yet unclassified
predict: aState

	|alternatives|
	
	(aState expectingAnd or: [ aState expectingNot ]) 
		ifTrue: [ ^ self forkToHandle: aState ].
	
	alternatives := self alternativesFor: aState.
	alternatives isEmpty ifTrue: [ ^ self ]. "this normally can only happen through TFOAlgo -- fix
	see with the non-peg example"
	(charts currentAdd: alternatives first)
		ifTrue: [ "could be duplicate"2 to: alternatives size  do: [:i| |a| a := (alternatives at: i). self backTrackAdd: a]
		] ifFalse: [  
			|added|
			2 to: alternatives size do: [ :i | |a|
				a := alternatives at: i. 
				added ifNotNil: [ self backTrackAdd: a ]
						ifNil: [ (charts currentAdd: a) 
										ifTrue: [ added := a ]  
										ifFalse: [  self backTrackAdd: a ]
								]
				]
		] "duplicate"
	