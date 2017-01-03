as yet unclassified
scanEmpty: aState

	charts nextEmptyAdd: 
		(aState asScannerStateFrom: readingPosition to: readingPosition withIndex: 1).
		
	^ true
	
