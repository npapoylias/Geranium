accessing
propertyAt: id put: anObject

	^ (self class 
			propertyAt: self 
			ifAbsent: [ self class propertyAt: self put: Dictionary new ]) at: id put: anObject