instance creation
calculateConsumptionPerBuildingProfile
	buildingProfiles := (areaOfInterest buildings
		collect: [ :b | inputVisitor modelToScenarioDict at: b ]) asSet asOrderedCollection.
	consumptionHistoryOfBuildingProfiles := OrderedDictionary new.
	buildingProfiles sort: [:a :b | a first name asString caseInsensitiveLessOrEqual: b first name asString].
	buildingProfiles
		do: [ :p | 
			| historiesOfP buildingsOfP |
			consumptionHistoryOfBuildingProfiles
				at: p
				put: OrderedCollection new.
			buildingsOfP := areaOfInterest buildings
				select: [ :b | (inputVisitor modelToScenarioDict at: b) = p ].
			historiesOfP := buildingsOfP
				collect: [ :b | consumptionHistoryOfBuildings at: b ].
			1 to: historiesOfP first size do: [ :i | 
				(consumptionHistoryOfBuildingProfiles at: p)
					add: (historiesOfP collect: [ :h | h at: i ]) sum ] ].
	self assert: buildingProfiles size = consumptionHistoryOfBuildingProfiles keys size.		
	