visiting
visitStatisticalScenario: aStatisticalScenario

	areaOfInterest := AreaOfInterest new.
	areaOfInterest coordinates: aStatisticalScenario coordinates.
	numberOfBuildings := aStatisticalScenario resolveTotalNumberOfBuildings.
	residenceDistribution := aStatisticalScenario urbanProfilesToPercentages.
	resolvedResidenceProfiles := aStatisticalScenario resolveUrbanProfiles.
	climateProfile := aStatisticalScenario resolveClimateProfile.
	trendsProfile := aStatisticalScenario resolveTrendsProfile.
	weightsProfile := aStatisticalScenario resolveWeightsProfile.
	years := aStatisticalScenario years.
	
	1 to: numberOfBuildings do: [ :i | |building|
		buildings "double dispatch and traversal logic in the visitor makes sense here"
			add: (building := (self visitNode: (resolvedResidenceProfiles at: (residenceDistribution next)))).
		building area: areaOfInterest. 
	].
	
	areaOfInterest buildings: buildings.
	self associate: climateProfile with: (self visitNode: climateProfile).
	self 
		associate: trendsProfile 
		with: (perfecture := (self visitNode: trendsProfile)). "country also will be created
	here with the profiles"
	areaOfInterest prefecture: perfecture. 
	areaOfInterest prefecture country weightsProfile: weightsProfile.
	self associate: weightsProfile with: (self visitNode: weightsProfile).
	self associate: aStatisticalScenario with: areaOfInterest.
	
	^ areaOfInterest