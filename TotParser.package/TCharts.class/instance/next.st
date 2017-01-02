accessing
next

	chartIndex + 1 > totalSize ifTrue: [ ^ {  } ].
	
	^ (self at: chartIndex + 1) "no nil collection" 
		ifNil: [ {  } ]