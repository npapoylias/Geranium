accessing
humiditySeries: aCollection
	
	^ humiditySeries 
		ifNil: [ humiditySeries := aCollection ]
		ifNotNil: [ humiditySeries addAll: aCollection ]