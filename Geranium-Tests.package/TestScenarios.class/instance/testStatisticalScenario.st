tests
testStatisticalScenario

	|s|

	s := StatisticalScenario retrieve: #ScenarioA.
		
	self assert: s coordinates = ((46.16352961038194 @ -1.1302614212036133) 
		-> (46.166851083597415 @ -1.1267745494842527)).
	self assert: s coordinatesAsOsmString = '46.16352961038194,-1.1302614212036133,46.166851083597415,-1.1267745494842527'.
	self assert: s urbanProfilesToPercentages class = GRCategoricalDistribution.
	self assert: s resolveUrbanProfiles class = Dictionary.
	self assert: (s resolveUrbanProfiles values first isKindOf: UrbanProfile).
	self assert: s climateProfile = #UrbanClimateA.
	self assert: s resolveClimateProfile class = ClimateProfile. 
	self assert: s trendsProfile = #FrenchConsumptionTrends.
	self assert: s resolveTrendsProfile class = TrendsProfile.
	self assert: s weightsProfile = #UrbanHypothesisA.
	self assert: s resolveWeightsProfile class = WeightsProfile.
	self assert: s totalNumberOfBuildings = #determinedByMap.
	self assert: s resolveTotalNumberOfBuildings next = 194. "check with OSM here"