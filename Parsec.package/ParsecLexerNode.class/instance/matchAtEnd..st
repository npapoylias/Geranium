accessing
matchAtEnd: aString

	|stream|
	stream := aString readStream.
	^ (self lexMatch: stream) and: [ stream atEnd ].