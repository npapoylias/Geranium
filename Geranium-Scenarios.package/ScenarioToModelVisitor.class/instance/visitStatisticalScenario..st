visiting
visitStatisticalScenario: aStatisticalScenario

	|totalResidences totalPopulation|

	areaOfInterest := AreaOfInterest new.
	areaOfInterest coordinates: aStatisticalScenario coordinates.
	numberOfBuildings := aStatisticalScenario resolveTotalNumberOfBuildings next.
	numberOfDeclaredResidences := aStatisticalScenario resolveResidences.
	numberOfDeclaredPopulation := aStatisticalScenario resolvePopulation.
	residenceDistribution := aStatisticalScenario urbanProfilesToPercentages.
	resolvedResidenceProfiles := aStatisticalScenario resolveUrbanProfiles.
	climateProfile := aStatisticalScenario resolveClimateProfile.
	trendsProfile := aStatisticalScenario resolveTrendsProfile.
	weightsProfile := aStatisticalScenario resolveWeightsProfile.
	years := aStatisticalScenario years next.
	
	buildings := OrderedCollection new.
	
	totalResidences := 0.
	totalPopulation := 0.
	
	1 to: numberOfBuildings do: [ :i | |building|
		
		((self check: numberOfDeclaredResidences versus: totalResidences) 
			"and: [ self check: numberOfDeclaredPopulation versus: totalPopulation ]")
			ifTrue: [ 
				buildings "double dispatch and traversal logic in the visitor makes sense here"
					add: (building := (self visitNode: (resolvedResidenceProfiles at: (residenceDistribution next)))).
				building area: areaOfInterest .
				totalResidences := totalResidences + building numberOfResidences.
				totalPopulation := totalPopulation + building occupantSize.
			]. 
	
	].
	
	areaOfInterest buildings: buildings.
	self associate: climateProfile with: (climate := (self visitNode: climateProfile)).
	areaOfInterest climateData: climate.
	self 
		associate: trendsProfile 
		with: (perfecture := (self visitNode: trendsProfile)). "country also will be created
	here with the profiles"
	areaOfInterest prefecture: perfecture. 
	areaOfInterest prefecture country weightsProfile: weightsProfile deepCopy.
	self associate: weightsProfile with: (self visitNode: weightsProfile).
	self associate: aStatisticalScenario with: areaOfInterest.
	
	^ areaOfInterest