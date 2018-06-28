instance creation
totalConsumptionReport

	^ GeraniumReport new
		areaOfInterest: areaOfInterest;
		inputVisitor: visitor;
		outputReport: (areaOfInterest historyOf: #consumption) sum