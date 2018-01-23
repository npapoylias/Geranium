instance creation
new: aName extending: anotherScenarioName

	^ self registry 
		at: aName 
		put: ((self registry at: anotherScenarioName) deepCopy named: aName)