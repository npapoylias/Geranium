instance creation
registry

	
	^ Scenario 
		propertyAt: #registry 
		ifAbsent: [ self propertyAt: #registry put: Dictionary new ]
		
