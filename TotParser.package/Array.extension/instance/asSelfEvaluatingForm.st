*TotParser
asSelfEvaluatingForm
	
	|s|
	s := String new writeStream.
	self printRecursivelyAsSelfEvaluatingFormOn: s.
	^ s contents