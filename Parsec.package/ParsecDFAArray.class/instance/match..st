instance creation
match: aString

	^ self matchesStreamPrefix: aString readStream
	