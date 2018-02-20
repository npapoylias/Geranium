instance creation
registry
	
	^ Scenario 
		propertyAt: #registry 
		ifAbsent: [ Scenario propertyAt: #registry put: Dictionary new ]
		
