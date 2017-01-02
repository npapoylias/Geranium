accessing
previous

	chartIndex == 1 ifTrue: [ ^ {  } ].
	chartIndex - 1 > totalSize ifTrue: [ ^ {  } ].
	
	^ (self at: chartIndex - 1) "no nil collection" 
		ifNil: [ {  } ]

