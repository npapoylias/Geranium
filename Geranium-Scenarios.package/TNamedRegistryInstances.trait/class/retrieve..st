instance creation
retrieve: aName

	^ self registry 
		at: aName 
		ifAbsent: [ self error: 'No Scenario named:' , aName asString , ' exists' ]