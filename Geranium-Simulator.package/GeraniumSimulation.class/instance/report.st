instance creation
report

	^ GeraniumReport new
		areaOfInterest: areaOfInterest;
		inputVisitor: visitor;
		outputReport: self generateOutputReport