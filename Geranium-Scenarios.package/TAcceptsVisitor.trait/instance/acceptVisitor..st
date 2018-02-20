visiting
acceptVisitor: aVisitor

	^ aVisitor 
		perform: ('visit' , self class name , ':') asSymbol 
		withArguments: {self}