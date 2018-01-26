tests
ScenarioA

	StatisticalScenario new 
		named: #ScenarioA;
		coordinates: (46.16352961038194 @ -1.1302614212036133) 
		-> (46.166851083597415 @ -1.1267745494842527);
		totalNumberOfBuildings: #determinedByMap;
		residencePercentages:{  
			#AppartmentBlockTypeA.
			#AppartmentBlockTypeB.
			#HouseTypeA
		} % { 0.1 . 0.1 . 0.8 }; 
		climateProfile: #AverageMetricsDistribution;
		trendsProfile: #FrenchConsumptionTrends;
		weightsProfile: #UrbanClimateHypothesisA;
		years: 1.