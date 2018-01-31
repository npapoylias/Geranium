tests
ScenarioB

	StatisticalScenario new 
		named: #ScenarioB extending: #ScenarioA;
		totalNumberOfBuildings: [10 -> 100]; 
		residencePercentages: {
			#AppartmentBlockTypeA. 
			#AppartmentBlockTypeB. 
			#HouseTypeA
		} % { 0.2 . 0.2 . 0.6 };
		years: [ 1 -> 3 ].