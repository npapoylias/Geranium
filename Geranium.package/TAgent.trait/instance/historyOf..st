accessing
historyOf: aProperty

	^ self propertyAt: aProperty ifAbsent: [ self propertyAt: aProperty put: OrderedCollection new ]