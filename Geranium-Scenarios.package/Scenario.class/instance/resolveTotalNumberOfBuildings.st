resolving
resolveTotalNumberOfBuildings

	"refactor to only resolve once the call for maps and meta-data"

	| mapData |
	
	totalNumberOfBuildings ~= #determinedByMap ifTrue: [ ^ totalNumberOfBuildings ].
	
	numberOfBuildingsDeterminedByMap ifNotNil: [ ^ numberOfBuildingsDeterminedByMap ].
	
	mapData := (GeraniumOsmService new 
		retrieveMapDataDefinedAs: {'way["building"="yes"]'}
		positionedWithInBoundingBox: self coordinatesAsOsmString).
		
	^ numberOfBuildingsDeterminedByMap := PMNumberGenerator with: 
		((((mapData at: 'elements') select: [ :el | (el at: 'type') = 'way' ])
		 select: [ :item | ((item at: 'tags') at: 'building' ifAbsent: [  ]) = 'yes']) size)
		