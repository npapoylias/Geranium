parsing
parse: aString
	
	stream := aString readStream.
	^ self parseRe.