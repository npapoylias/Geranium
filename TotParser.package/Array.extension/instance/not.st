*TotParser
not
	
	|name|
	name := ('tn' , self hash asString) asSymbol.
	^  (name -->  self) not. "returns rule"