as yet unclassified
scanEof: aState

	^ input size = aState to
		ifTrue: [ 
			charts nextAdd: 
				(aState asScannerStateFrom: readingPosition to: readingPosition withIndex: 1). true ]
		ifFalse: [ false ]	
