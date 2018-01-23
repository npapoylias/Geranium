resolving
resolveTotalNumberOfBuildings

	"refactor to only resolve once the call for maps and meta-data"

	| mapData |
	
	totalNumberOfBuildings ~= #determinedByMap ifTrue: [ ^ totalNumberOfBuildings ].
	
	mapData := (GeraniumOsmService new 
		retrieveMapDataDefinedAs: {'way["building"="yes"]'}
		positionedWithInBoundingBox: self coordinatesAsOsmString).
		
	^ (((mapData at: 'elements') select: [ :el | (el at: 'type') = 'way' ])
		 select: [ :item | ((item at: 'tags') at: 'building' ifAbsent: [  ]) = 'yes']) size
		