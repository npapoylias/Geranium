as yet unclassified
scan: aState

	(super scan: aState)
		ifFalse: [self backTrack]

	
