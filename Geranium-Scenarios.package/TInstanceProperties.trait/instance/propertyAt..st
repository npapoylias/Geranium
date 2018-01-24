accessing
propertyAt: id

	^ (self class 
			propertyAt: self 
			ifAbsent: [ self class propertyAt: self put: Dictionary new ]) at: id