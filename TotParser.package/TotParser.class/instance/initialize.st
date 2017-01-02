initialization
initialize

	super initialize.
	
	self class allInstVarNames 
			select: [ :iv | (TotParser instVarNames includes: iv) not ] 
			thenDo: [ :iv | self instVarNamed: iv put: iv ]. "ivs as symbols"
	
	"if we put direct references inside rules it should be done here and then we just
	re-initialize"
	
	grammar := TGrammar 
		new named: self class name; 
		with: ((self class allSelectorsBelow: TotParser) collect: 
			[ :name | self perform: name]).