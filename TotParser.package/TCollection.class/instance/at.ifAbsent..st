accessing
at: anIndex ifAbsent: aBlock
	
	self halt. "some erratic behaviour on profiling concerning the block value, inlined"
	
	anIndex == 0 ifTrue: [ ^ aBlock value ].
	anIndex > totalSize ifTrue: [ ^ aBlock value ].
	
	^ (self at: anIndex) "no nil collection" 
		ifNil: [ aBlock value ]