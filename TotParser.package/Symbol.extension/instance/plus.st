*TotParser
plus

	"A+ = #(A , A*)"
	
	|name|
	name := ('tp' , self hash asString) asSymbol.
	^  name -->  self , {name . #| . #e} . "returns rule"