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
		} % { 10 . 10 . 80 }; 
		climateProfile: #UrbanClimateA;
		trendsProfile: #FrenchConsumptionTrends;
		weightsProfile: #UrbanHypothesisA;
		years: 1.