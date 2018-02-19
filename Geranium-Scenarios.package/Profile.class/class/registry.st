instance creation
registry

	^ Profile
			propertyAt: #registry 
			ifAbsent: [ Profile propertyAt: #registry put: Dictionary new ]