initialization
testExample

	|visitor areaOfInterest residences|

	"we need a unified way to set the SEED for reproducible experiments"

	visitor := ScenarioToModelVisitor new.
	areaOfInterest := visitor analyze: (Scenario retrieve: #ScenarioA).
	{ visitor . areaOfInterest } inspect.
	self assert: areaOfInterest buildings size equals: 194.
	residences := (areaOfInterest buildings select: [ :b | b class = House ]) size 
	+ ((areaOfInterest buildings select: [ :b | b class = AppartmentBlock ]) 
			collect: [:block | block appartments values size]) sum.
	self assert: residences > 500.