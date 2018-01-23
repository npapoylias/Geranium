instance creation
registry

	^ self 
		propertyAt: #registry 
		ifAbsent: [ self propertyAt: #registry put: Dictionary new ]