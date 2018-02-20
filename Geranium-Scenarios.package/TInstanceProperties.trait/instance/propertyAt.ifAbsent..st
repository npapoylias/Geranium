accessing
propertyAt: id ifAbsent: aBlock

	^ (self class 
			propertyAt: self 
			ifAbsent: [ self class propertyAt: self put: Dictionary new ]) at: id ifAbsent: aBlock