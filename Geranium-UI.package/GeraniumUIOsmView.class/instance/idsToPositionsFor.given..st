examples
idsToPositionsFor: map given: mapData

	^ (((mapData at: 'elements')
		select: [ :el | (el at: 'type') = 'node' ])
		collect: [ :el | 
			(el at: 'id')
				-> (map latLonToRoassal: (el at: 'lat') @ (el at: 'lon')) ])
		asDictionary