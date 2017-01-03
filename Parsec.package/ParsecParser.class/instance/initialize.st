initialization
initialize

	super initialize.
	
	self class allInstVarNames 
			select: [ :iv | (ParsecParser instVarNames includes: iv) not ] 
			thenDo: [ :iv | self instVarNamed: iv put: iv ]. "ivs as symbols"
	
	"if we put direct references inside rules it should be done here and then we just
	re-initialize"
	
	grammar := ParsecGrammar 
		new named: self class name; 
		with: ((self class allSelectorsBelow: ParsecParser) collect: 
			[ :name | self perform: name]).