accessing
at: anIndex

	^ array at: anIndex "we can go with no check, should use ifAbsent for nil values"
	