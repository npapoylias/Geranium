visiting
visitStatisticalScenario: aStatisticalScenario

	numberOfBuildings := aStatisticalScenario resolveTotalNumberOfBuildings.
	residenceDistribution := aStatisticalScenario urbanProfilesToPercentages.
	resolvedResidenceProfiles := aStatisticalScenario resolveUrbanProfiles.
	climateProfile := aStatisticalScenario resolveClimateProfile.
	trendsProfile := aStatisticalScenario resolveTrendsProfile.
	weightsProfile := aStatisticalScenario resolveWeightsProfile.
	
	1 to: numberOfBuildings do: [ :i | 
		buildings "double dispatch and traversal logic in the visitor makes sense here"
			add: (self visitNode: (resolvedResidenceProfiles at: (residenceDistribution next))) 
	].
	
	buildings do: [:b | self associate: aStatisticalScenario with: b ].
	self associate: climateProfile with: (self visitNode: climateProfile).
	self associate: trendsProfile with: (self visitNode: trendsProfile).
	self associate: weightsProfile with: (self visitNode: weightsProfile).
	
	^ buildings