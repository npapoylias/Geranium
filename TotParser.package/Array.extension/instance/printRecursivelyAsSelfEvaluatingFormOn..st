*TotParser
printRecursivelyAsSelfEvaluatingFormOn: aStream

	aStream nextPut: ${.
	self do: [:el | el printRecursivelyAsSelfEvaluatingFormOn: aStream] separatedBy: [ aStream nextPutAll: '. '].
	aStream nextPut: $}