instance creation
named: aName extending: anotherScenarioName

	| copy |
	copy := (self class registry at: anotherScenarioName) deepCopy. 
	self become: copy.
	self named: aName.