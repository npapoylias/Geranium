instance creation
registry

	self shouldBeImplemented
	
	"e.g for a seperate registry in every class in an hierarchy: 
	
	^ self 
		propertyAt: #registry 
		ifAbsent: [ self propertyAt: #registry put: Dictionary new ]
		
	or for a single Dict for the whole hierarchy (where A is the root)
		
	^ A 
		propertyAt: #registry 
		ifAbsent: [ self propertyAt: #registry put: Dictionary new ]
		
	"