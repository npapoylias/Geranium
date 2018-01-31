instance creation
retrieve: aName

	^ self registry 
		at: aName 
		ifAbsent: [ self error: 'No entity named:' , aName asString , ' exists' ]