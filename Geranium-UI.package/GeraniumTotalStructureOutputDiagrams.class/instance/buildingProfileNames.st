accessing
buildingProfileNames
 
	^ buildingProfileNames ifNil: [ buildingProfileNames := (self report output consumptionHistoryOfBuildingProfiles keys) asOrderedCollection collect: [ :a | a first name asString ] ]