instance creation
registry

	^ Profile
			propertyAt: #registry 
			ifAbsent: [ self propertyAt: #registry put: Dictionary new ]